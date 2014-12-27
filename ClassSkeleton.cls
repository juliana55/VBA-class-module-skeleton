Option Explicit

Private m_member_variable As String
Private m_called_time As Integer

'Constructor
Private Sub Class_Initialize()

    m_member_variable = "class module example"
    m_called_time = 0
    
End Sub

'Destructor
Private Sub Class_Terminate()

    Debug.Print ("Destructor is called.")

End Sub

'public member function
Public Function SetWord(ByVal arg_word As String)

    ' Do something
     m_member_variable = arg_word
     CountCalledTime

End Function

'private member function
Public Function Say()
    
    MsgBox (m_member_variable + vbLf + "called time is " + CStr(m_called_time))

End Function

Private Function CountCalledTime()
    
     m_called_time = m_called_time + 1
    
End Function


