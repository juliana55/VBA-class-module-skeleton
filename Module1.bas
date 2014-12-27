Option Explicit

Sub main()

    Dim CInstance As ClassSkeleton

    Set CInstance = New ClassSkeleton    'construction

    CInstance.SetWord ("hello class")
    CInstance.Say

    Set CInstance = Nothing           'destruction

End Sub
