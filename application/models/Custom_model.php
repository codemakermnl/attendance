<?php 
date_default_timezone_set('Asia/Taipei');

	class Custom_model extends CI_Model{

		public function get_all_users() { 
					$this->db->select("*");
					$this->db->from("person");
					$this->db->join("rfid", "person.rfid_id = rfid.rfid_id");
					$this->db->join("person_position", "person.position_Id = person_position.position_id AND person.position_Id = 3");
					$q = $this->db->get();
					return $q->result();
		}


		public function get_attendance_sheet( $date ) {
			$this->db->select(" person.first_name, person.last_name, attendance_sheet.attendance_date, attendance_status.status_name, course.course_code, sections.section_name,
			major.major, attendance_sheet.remarks, attendance_sheet.attendance_status_id, attendance_sheet.attendance_sheet_id ");
			$this->db->from("attendance_sheet");
			$this->db->join("attendance_status", "attendance_sheet.attendance_status_id = attendance_status.attendance_status_id");
			$this->db->join("person", "attendance_sheet.person_id = person.person_id");
			$this->db->join("person_major", "person_major.person_id = person.person_id");
			$this->db->join("major", "major.major_id = person_major.major_id");
			$this->db->join("course", "course.course_id = attendance_sheet.course_id");
			$this->db->join("person_section", "person_section.person_id = person.person_id");
			$this->db->join("sections", "sections.section_id = person_section.section_id");
			$this->db->where("attendance_sheet.attendance_date = ", $date);
			// ADD and date
			$q = $this->db->get();
			return $q->result();
		}


		// annthonite
		public function get_filtered_attendance_sheet($date) {
			$this->db->select(" person.first_name, person.last_name, attendance_sheet.attendance_date, attendance_status.status_name, course.course_code, sections.section_name,
			major.major, attendance_sheet.remarks, attendance_sheet.attendance_status_id, attendance_sheet.attendance_sheet_id ");
			$this->db->from("attendance_sheet");
			$this->db->join("attendance_status", "attendance_sheet.attendance_status_id = attendance_status.attendance_status_id");
			$this->db->join("person", "attendance_sheet.person_id = person.person_id");
			$this->db->join("person_major", "person_major.person_id = person.person_id");
			$this->db->join("major", "major.major_id = person_major.major_id");
			$this->db->join("course", "course.course_id = attendance_sheet.course_id");
			$this->db->join("person_section", "person_section.person_id = person.person_id");
			$this->db->join("sections", "sections.section_id = person_section.section_id");

			if (!empty($this->input->get('major_id'))) {
				$this->db->where("major.major_id = ", $this->input->get('major_id'));
			}

			if (!empty($this->input->get('course_id'))) {
				$this->db->where("course.course_id = ", $this->input->get('course_id'));
			}

			if (!empty($this->input->get('section_id'))) {
				$this->db->where("sections.section_id = ", $this->input->get('section_id'));
			}

			if (!empty($this->input->get('attendance_date'))) {
				$this->db->where("attendance_sheet.attendance_date = ", $this->input->get('attendance_date'));
			}else {
				$this->db->where("attendance_sheet.attendance_date = ", $date);
			}


			$q = $this->db->get();
			return $q->result();
		}



	}