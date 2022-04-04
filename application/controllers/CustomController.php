<?php
require('Time.php');
class CustomController extends CI_Controller
{

    public function index()
    {
        $this->load->view('welcome_message');
    }

    public function validatePassword()
    {
        $password = $_POST['password'];
        $isExist = $this->Global_model->get_data_with_query('users', 'id', 'password ="' . sha1($password) . '" AND username = "' . $this->session->userdata('username') . '"');
        if (count($isExist) > 0) {
            $status = 'success';
        } else {
            $status = 'error';
        }
        echo json_encode(array('status' => $status));
    }

    public function getNewPassword()
    {
        $length = 6;
        $data['password'] = substr(str_shuffle(str_repeat($x = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil($length / strlen($x)))), 1, $length);

        print_r(json_encode($data));
    }

 
    public function addAccount()
    {
        $rfid_data = array('rfid_data' => $this->input->post('rfid'));
        $rfid_id = $this->Global_model->insert_data('rfid', $rfid_data);
        $table = 'person';
        $courses = array($this->input->post('courses'));
        $courses_str = implode(",", $courses);
        $data = array(
            'email' => $this->input->post('email'),
            'password' => sha1($this->input->post('password')),
            'first_name' => $this->input->post('fname'),
            'last_name' => $this->input->post('lname'),
            'position_Id' => '3',
            'rfid_id' => $rfid_id,
            'person_number' => $this->input->post('faculty_number')
        );

        $response = $this->Global_model->insert_data($table, $data);
        print_r(json_encode($response));
    }

    public function updatePassword()
    {
        $person_id = $this->session->userdata('person_id');
        $current_password = $this->input->post('current_password');
        $new_password = $this->input->post('new_password');
        $confirm_new_password = $this->input->post('confirm_new_password');
        $user = $this->Global_model->get_data_with_query('person', 'password', 'person_id =' . $person_id);
        if ($new_password == $confirm_new_password) {
            if (sha1($current_password) == $user[0]->password) {
                $table = 'person';
                $data = array('password' => sha1($confirm_new_password));
                $field = 'person_id';
                $where = $person_id;
                $response = $this->Global_model->update_data($table, $data, $field, $where);
                $result['message'] = "Password Successfully Changed";
                $result['status'] = "success";
            } else {
                $result['message'] = "Invalid Password";
                $result['status'] = "error";
            }

        } else {
            $result['message'] = "New password and confirm password does not match";
            $result['status'] = "error";
        }

        print_r(json_encode($result));
    }

    public function getAllAccounts()
    {
        $result = $this->Custom_model->get_all_users();
        print_r(json_encode($result));
    }

   

    public function deleteAccount() {
        $table = "person";
        $field = "person_id";
        $where = $this->input->post("id");
        $result = $this->Global_model->delete_data($table, $field, $where);
        print_r(json_encode($result));
    }


    public function getCourses() {
        $courses = $this->Global_model->get_all_data("course", "*");

        print_r(json_encode($courses));
    }



    public function getSections() {
        $sections = $this->Global_model->get_all_data_with_order("sections", "*", "sections.year_level", "ASC");

        print_r(json_encode($sections));
    }



    public function getAttendanceSheet() {
        $current_date = date('Y-m-d');
        $result = $this->Custom_model->get_attendance_sheet($current_date);

        // echo $this->db->last_query();

        // print("<pre>".print_r($result,true)."</pre>");
        print_r(json_encode($result));
    }


    public function getFilteredAttendanceSheet() {
        $date = date('Y-m-d');
        $aResult = $this->Custom_model->get_filtered_attendance_sheet($date);
        // print("<pre>".print_r($aResult,true)."</pre>");
        print_r(json_encode($aResult));
    }



    public function updateLogs() { 
        $table = 'attendance_sheet';
        $data = array(
            'attendance_status_id' => $this->input->post("attendance_id"),
            'remarks'       => $this->input->post('remarks')
        );
        $field = 'attendance_sheet_id';
        $where = $this->input->post('logs_id');
        return $this->Global_model->update_data($table, $data, $field, $where);
    }


    public function updateLogsRemarks() {
        $table = 'attendance_sheet';
        $data = array(
            'remarks' => $this->input->post('remarks')
        );
        $field = 'attendance_sheet_id';
        $where = $this->input->post('logs_id');
        return $this->Global_model->update_data($table, $data, $field, $where);
    }


    public function newPassword() {
        $table = 'person';
        $field = "person_id";
        $where_value = $this->input->post('person_id');
        $data = array(
            'password' => sha1($this->input->post('password'))
        );

        $email = trim($this->input->post('email'));

        $response = $this->Global_model->update_data($table, $data, $field, $where_value);

        print_r(json_encode($response));
    }




}
