.class public Lcom/sec/android/app/fm/MainActivity$MyHandler;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 214
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    .line 473
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 216
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->handleAFClick()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$000(Lcom/sec/android/app/fm/MainActivity;)V

    goto :goto_0

    .line 219
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->handleEarPhoneClick()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$100(Lcom/sec/android/app/fm/MainActivity;)V

    goto :goto_0

    .line 222
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    const-string v24, "hide volume bar"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    goto :goto_0

    .line 231
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [Ljava/lang/Object;

    move-object/from16 v16, v23

    check-cast v16, [Ljava/lang/Object;

    .line 232
    .local v16, objects:[Ljava/lang/Object;
    const/16 v23, 0x0

    aget-object v8, v16, v23

    check-cast v8, Landroid/app/Dialog;

    .line 233
    .local v8, dialog:Landroid/app/Dialog;
    const/16 v23, 0x1

    aget-object v18, v16, v23

    check-cast v18, Ljava/lang/Runnable;

    .line 234
    .local v18, runnable:Ljava/lang/Runnable;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 235
    invoke-virtual {v8}, Landroid/app/Dialog;->cancel()V

    .line 236
    if-eqz v18, :cond_0

    .line 237
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 241
    .end local v8           #dialog:Landroid/app/Dialog;
    .end local v16           #objects:[Ljava/lang/Object;
    .end local v18           #runnable:Ljava/lang/Runnable;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->checkInitialAccess()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$200(Lcom/sec/android/app/fm/MainActivity;)V

    goto :goto_0

    .line 245
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-eqz v23, :cond_3

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    move-wide/from16 v23, v0

    const-wide/16 v25, -0x1

    cmp-long v23, v23, v25

    if-nez v23, :cond_2

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    move/from16 v23, v0

    const/high16 v24, -0x4080

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_1

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->firstScannedChannel:F

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-virtual/range {v23 .. v26}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    .line 265
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    const-wide/16 v24, -0x1

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    goto/16 :goto_0

    .line 254
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/fm/data/Channel;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    move/from16 v23, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    goto :goto_1

    .line 256
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    move-wide/from16 v25, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->getNearestScanedFrequency(J)J
    invoke-static/range {v24 .. v26}, Lcom/sec/android/app/fm/MainActivity;->access$300(Lcom/sec/android/app/fm/MainActivity;J)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x447a

    div-float v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-virtual/range {v23 .. v26}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    goto :goto_1

    .line 259
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    move-wide/from16 v23, v0

    const-wide/16 v25, -0x1

    cmp-long v23, v23, v25

    if-eqz v23, :cond_4

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x447a

    div-float v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-virtual/range {v23 .. v26}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    goto/16 :goto_1

    .line 263
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-virtual/range {v23 .. v26}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    goto/16 :goto_1

    .line 268
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v24

    #calls: Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_5

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #calls: Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setSelected(Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RDS text set :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/fm/MainActivity;->access$500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 276
    :cond_5
    sget-boolean v23, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #calls: Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setSelected(Z)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RTP text set :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/fm/MainActivity;->access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :sswitch_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    const v24, 0x7f0a000b

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/media/fmradio/FMPlayer;->cancelScan()Z

    .line 293
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/media/fmradio/FMPlayer;->cancelSeek()V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 318
    :catch_0
    move-exception v9

    .line 320
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 321
    :catch_1
    move-exception v23

    goto/16 :goto_0

    .line 301
    .end local v9           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->on()V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->setPlayPauseImage()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$900(Lcom/sec/android/app/fm/MainActivity;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "initial : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/fm/MainActivity;->access$1000(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1000(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-virtual/range {v23 .. v26}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 308
    :catch_2
    move-exception v9

    .line 309
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    const-string v24, "exception occurred during turning on"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 311
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 315
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->setPlayPauseImage()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$900(Lcom/sec/android/app/fm/MainActivity;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 328
    .end local v9           #e:Ljava/lang/Exception;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->updateRecordingPanelUI()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1100(Lcom/sec/android/app/fm/MainActivity;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->recordFMRadioAudio()V

    goto/16 :goto_0

    .line 333
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1200(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_0

    .line 338
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->updateRecordedTime()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1300(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_0

    .line 341
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 342
    .local v17, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1400(Lcom/sec/android/app/fm/MainActivity;)[Lcom/sec/android/app/fm/ui/FavoriteButton;

    move-result-object v23

    aget-object v11, v23, v17

    .line 343
    .local v11, fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getFavChannelOnindex(I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v6

    .line 344
    .local v6, channel_1:Lcom/sec/android/app/fm/data/Channel;
    if-nez v6, :cond_11

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1500(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    if-nez v23, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    sget-object v24, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v25, 0x7f0a003d

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    .line 349
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mNoChannelToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 355
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v23

    if-nez v23, :cond_c

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v23

    if-nez v23, :cond_b

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    #setter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$1602(Lcom/sec/android/app/fm/MainActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 359
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v23

    const v24, 0x7f0a0017

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Toast;->setText(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 363
    :catch_3
    move-exception v10

    .line 364
    .local v10, e1:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v10}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    .line 371
    .end local v10           #e1:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 373
    .local v19, station:Ljava/lang/String;
    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    move/from16 v23, v0

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_e

    .line 377
    :cond_d
    const-string v19, ""

    .line 379
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v19

    move/from16 v3, v17

    #calls: Lcom/sec/android/app/fm/MainActivity;->addFavChannel(FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->access$1800(Lcom/sec/android/app/fm/MainActivity;FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v5

    .line 380
    .local v5, channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v5, :cond_0

    .line 383
    move/from16 v0, v17

    iput v0, v5, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 384
    const/4 v7, 0x0

    .line 385
    .local v7, channelstr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    move/from16 v23, v0

    const/high16 v24, 0x447a

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-long v0, v0

    move-wide/from16 v21, v0

    .line 386
    .local v21, value:J
    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x447a

    div-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1900(Lcom/sec/android/app/fm/MainActivity;)[F

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    move/from16 v24, v0

    aput v24, v23, v17

    .line 388
    invoke-virtual {v11, v7}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFrequencyText(Ljava/lang/String;)V

    .line 391
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 392
    invoke-virtual {v11}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFreqTextColorAsPlay()V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    move/from16 v23, v0

    sget-object v24, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFreq(Landroid/content/Context;)F

    move-result v24

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_f

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-virtual/range {v23 .. v26}, Lcom/sec/android/app/fm/MainActivity;->onAndTune(FLandroid/view/View;I)V
    :try_end_7
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_7 .. :try_end_7} :catch_4

    .line 406
    :cond_f
    :goto_3
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    .line 407
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    const/high16 v24, -0x4080

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;F)V

    goto/16 :goto_0

    .line 401
    :cond_10
    :try_start_8
    invoke-virtual {v11}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFreqTextColorAsNormal()V
    :try_end_8
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 403
    :catch_4
    move-exception v9

    .line 404
    .local v9, e:Lcom/samsung/media/fmradio/FMPlayerException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_3

    .line 410
    .end local v5           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v7           #channelstr:Ljava/lang/String;
    .end local v9           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    .end local v19           #station:Ljava/lang/String;
    .end local v21           #value:J
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    const-string v24, "Worker thread is buys ignore it"

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1500(Lcom/sec/android/app/fm/MainActivity;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$2200(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/fm/MainActivity;->access$2300(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v25

    #calls: Lcom/sec/android/app/fm/MainActivity;->toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    invoke-static/range {v23 .. v25}, Lcom/sec/android/app/fm/MainActivity;->access$2400(Lcom/sec/android/app/fm/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$2600(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/fm/data/Channel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->txt1Freq:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/fm/MainActivity;->access$2500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    invoke-direct/range {v24 .. v25}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 421
    :cond_13
    iget v12, v6, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    .line 423
    .local v12, freq:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->onAndTune(FLandroid/view/View;I)V

    .line 426
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$1400(Lcom/sec/android/app/fm/MainActivity;)[Lcom/sec/android/app/fm/ui/FavoriteButton;

    move-result-object v4

    .local v4, arr$:[Lcom/sec/android/app/fm/ui/FavoriteButton;
    array-length v15, v4

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_4
    if-ge v13, v15, :cond_15

    aget-object v20, v4, v13

    .line 427
    .local v20, temp:Lcom/sec/android/app/fm/ui/FavoriteButton;
    if-eqz v20, :cond_14

    .line 428
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFreqTextColorAsNormal()V

    .line 426
    :cond_14
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 430
    .end local v20           #temp:Lcom/sec/android/app/fm/ui/FavoriteButton;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 431
    invoke-virtual {v11}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFreqTextColorAsPlay()V
    :try_end_9
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 433
    .end local v4           #arr$:[Lcom/sec/android/app/fm/ui/FavoriteButton;
    .end local v13           #i$:I
    .end local v15           #len$:I
    :catch_5
    move-exception v9

    .line 434
    .restart local v9       #e:Lcom/samsung/media/fmradio/FMPlayerException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 442
    .end local v6           #channel_1:Lcom/sec/android/app/fm/data/Channel;
    .end local v9           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    .end local v11           #fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    .end local v12           #freq:F
    .end local v17           #pos:I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    move/from16 v24, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    move/from16 v23, v0

    invoke-static {}, Lcom/sec/android/app/fm/MainActivity;->access$2800()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 444
    new-instance v14, Landroid/content/Intent;

    const-string v23, "com.android.fm.volume_lock"

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    goto/16 :goto_0

    .line 448
    .end local v14           #intent:Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    move/from16 v23, v0

    invoke-static {}, Lcom/sec/android/app/fm/MainActivity;->access$2800()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_17

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    .line 453
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    move-object/from16 v23, v0

    const/16 v24, 0xc9

    const-wide/16 v25, 0x64

    invoke-virtual/range {v23 .. v26}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 451
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    goto :goto_5

    .line 458
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    move/from16 v24, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$2700(Lcom/sec/android/app/fm/MainActivity;I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$2900(Lcom/sec/android/app/fm/MainActivity;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/fm/MainActivity;->access$2900(Lcom/sec/android/app/fm/MainActivity;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    .line 465
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    move-object/from16 v23, v0

    const/16 v24, 0xca

    const-wide/16 v25, 0x64

    invoke-virtual/range {v23 .. v26}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 463
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    goto :goto_6

    .line 467
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;->this$0:Lcom/sec/android/app/fm/MainActivity;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/fm/MainActivity;->hideRecoder()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/fm/MainActivity;->access$3000(Lcom/sec/android/app/fm/MainActivity;)V

    goto/16 :goto_0

    .line 312
    .local v9, e:Ljava/lang/Exception;
    :catch_6
    move-exception v23

    goto/16 :goto_2

    .line 214
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_0
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xc8 -> :sswitch_b
        0xc9 -> :sswitch_c
        0xca -> :sswitch_d
    .end sparse-switch
.end method