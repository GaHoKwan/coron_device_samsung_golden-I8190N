.class Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiniModeInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1047
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1048
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 32
    .parameter "event"

    .prologue
    .line 1052
    const/4 v5, 0x0

    .line 1054
    .local v5, handled:Z
    :try_start_0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v28, v0

    if-eqz v28, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v28

    and-int/lit8 v28, v28, 0x2

    if-eqz v28, :cond_10

    .line 1056
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v11, v0

    .line 1057
    .local v11, motionEvent:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    .line 1070
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getRawX()F

    move-result v26

    .line 1071
    .local v26, x:F
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getRawY()F

    move-result v27

    .line 1072
    .local v27, y:F
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 1074
    .local v4, action:I
    if-eqz v4, :cond_0

    .line 1253
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1255
    .end local v4           #action:I
    .end local v11           #motionEvent:Landroid/view/MotionEvent;
    .end local v26           #x:F
    .end local v27           #y:F
    :goto_0
    return-void

    .line 1078
    .restart local v4       #action:I
    .restart local v11       #motionEvent:Landroid/view/MotionEvent;
    .restart local v26       #x:F
    .restart local v27       #y:F
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    monitor-enter v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1079
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v27

    #calls: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FF)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;FF)Lcom/android/server/wm/WindowState;

    move-result-object v21

    .line 1085
    .local v21, targetWin:Lcom/android/server/wm/WindowState;
    if-nez v21, :cond_1

    .line 1086
    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1253
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    .line 1089
    :cond_1
    :try_start_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v30, 0x834

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v30, 0x836

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 1092
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1096
    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 1097
    .local v25, windows:Ljava/util/ArrayList;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v15, subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .local v12, revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v13, Ljava/util/Stack;

    invoke-direct {v13}, Ljava/util/Stack;-><init>()V

    .line 1100
    .local v13, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1101
    .local v3, N:I
    const/16 v23, 0x0

    .line 1102
    .local v23, topWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v17, 0x0

    .line 1103
    .local v17, subTopWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v16, 0x0

    .line 1104
    .local v16, subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    const/4 v14, 0x0

    .line 1105
    .local v14, subTargetWin:Lcom/android/server/wm/WindowState;
    const/16 v24, 0x0

    .line 1106
    .local v24, win:Lcom/android/server/wm/WindowState;
    add-int/lit8 v9, v3, -0x1

    .local v9, j:I
    :goto_1
    if-ltz v9, :cond_f

    .line 1108
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #win:Lcom/android/server/wm/WindowState;
    check-cast v24, Lcom/android/server/wm/WindowState;

    .line 1110
    .restart local v24       #win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v30, 0x834

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v30, 0x836

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    .line 1106
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 1116
    :cond_3
    move-object/from16 v23, v24

    .line 1120
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_11

    .line 1121
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1122
    .local v7, id:I
    if-gez v7, :cond_5

    .line 1123
    const-string v28, "WindowManager"

    const-string v30, "    no targetWin in mWindows!!"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/16 v23, 0x0

    .line 1130
    :goto_2
    if-eqz v23, :cond_f

    .line 1134
    add-int/lit8 v18, v7, -0x1

    .line 1135
    .local v18, subUnderWinIndex:I
    :goto_3
    if-ltz v18, :cond_4

    .line 1136
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 1137
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 1145
    :cond_4
    :goto_4
    invoke-virtual {v13}, Ljava/util/Stack;->empty()Z

    move-result v28

    if-nez v28, :cond_7

    .line 1146
    invoke-virtual {v13}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 1147
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1250
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v9           #j:I
    .end local v12           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v13           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v15           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v18           #subUnderWinIndex:I
    .end local v21           #targetWin:Lcom/android/server/wm/WindowState;
    .end local v23           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v24           #win:Lcom/android/server/wm/WindowState;
    .end local v25           #windows:Ljava/util/ArrayList;
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1253
    .end local v4           #action:I
    .end local v11           #motionEvent:Landroid/view/MotionEvent;
    .end local v26           #x:F
    .end local v27           #y:F
    :catchall_1
    move-exception v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v28

    .line 1127
    .restart local v3       #N:I
    .restart local v4       #action:I
    .restart local v6       #i:I
    .restart local v7       #id:I
    .restart local v9       #j:I
    .restart local v11       #motionEvent:Landroid/view/MotionEvent;
    .restart local v12       #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v13       #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    .restart local v15       #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v16       #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v17       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v21       #targetWin:Lcom/android/server/wm/WindowState;
    .restart local v23       #topWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v24       #win:Lcom/android/server/wm/WindowState;
    .restart local v25       #windows:Ljava/util/ArrayList;
    .restart local v26       #x:F
    .restart local v27       #y:F
    :cond_5
    :try_start_5
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1140
    .restart local v18       #subUnderWinIndex:I
    :cond_6
    invoke-virtual {v13, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1143
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 1149
    :cond_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v19, v7, v28

    .line 1152
    .local v19, subUpperWinIndex:I
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    :goto_5
    move/from16 v0, v19

    if-gt v0, v3, :cond_8

    .line 1156
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 1157
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 1166
    :cond_8
    const-string v28, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "subTargetWinList = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v10, 0x0

    .local v10, k:I
    :goto_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_a

    .line 1168
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v28, v28, v10

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 1169
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1160
    .end local v10           #k:I
    :cond_9
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1161
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1173
    .restart local v10       #k:I
    :cond_a
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    .line 1174
    .local v22, topIndex:I
    :goto_7
    move/from16 v0, v22

    if-gt v0, v3, :cond_b

    .line 1175
    add-int/lit8 v28, v22, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 1176
    .restart local v17       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 1177
    move-object/from16 v16, v17

    .line 1178
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 1183
    :cond_b
    if-eqz v16, :cond_c

    .line 1184
    move-object/from16 v23, v16

    .line 1188
    :cond_c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-le v0, v1, :cond_d

    .line 1189
    const-string v28, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "revSubTargetWinList.size() = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1191
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1192
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    .line 1193
    .local v20, subWinAtList:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_8

    .line 1196
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    .end local v20           #subWinAtList:Lcom/android/server/wm/WindowState;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1200
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)V

    .line 1250
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v9           #j:I
    .end local v10           #k:I
    .end local v12           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v13           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v15           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v18           #subUnderWinIndex:I
    .end local v19           #subUpperWinIndex:I
    .end local v22           #topIndex:I
    .end local v23           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v24           #win:Lcom/android/server/wm/WindowState;
    .end local v25           #windows:Ljava/util/ArrayList;
    :cond_f
    :goto_9
    monitor-exit v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1253
    .end local v4           #action:I
    .end local v11           #motionEvent:Landroid/view/MotionEvent;
    .end local v21           #targetWin:Lcom/android/server/wm/WindowState;
    .end local v26           #x:F
    .end local v27           #y:F
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_0

    .line 1211
    .restart local v3       #N:I
    .restart local v4       #action:I
    .restart local v6       #i:I
    .restart local v9       #j:I
    .restart local v11       #motionEvent:Landroid/view/MotionEvent;
    .restart local v12       #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v13       #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    .restart local v15       #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v16       #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v17       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v21       #targetWin:Lcom/android/server/wm/WindowState;
    .restart local v23       #topWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v24       #win:Lcom/android/server/wm/WindowState;
    .restart local v25       #windows:Ljava/util/ArrayList;
    .restart local v26       #x:F
    .restart local v27       #y:F
    :cond_11
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_f

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_9

    .line 1224
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v9           #j:I
    .end local v12           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v13           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v15           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v23           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v24           #win:Lcom/android/server/wm/WindowState;
    .end local v25           #windows:Ljava/util/ArrayList;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    if-eqz v28, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_f

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_9
.end method