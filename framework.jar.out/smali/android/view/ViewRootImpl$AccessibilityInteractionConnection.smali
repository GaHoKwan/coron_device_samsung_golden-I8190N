.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityInteractionConnection"
.end annotation


# instance fields
.field private final mViewRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .parameter "viewRootImpl"

    .prologue
    .line 5459
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    .line 5460
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    .line 5461
    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityId(JIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 14
    .parameter "accessibilityNodeId"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5468
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 5469
    .local v13, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v13, :cond_0

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 5470
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdClientThread(JIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5482
    :goto_0
    return-void

    .line 5477
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5478
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByViewId(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 15
    .parameter "accessibilityNodeId"
    .parameter "viewId"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5509
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewRootImpl;

    .line 5510
    .local v14, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_0

    iget-object v2, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 5511
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-virtual/range {v2 .. v13}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByViewIdClientThread(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5523
    :goto_0
    return-void

    .line 5518
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5519
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 15
    .parameter "accessibilityNodeId"
    .parameter "text"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5530
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewRootImpl;

    .line 5531
    .local v14, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_0

    iget-object v2, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 5532
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-virtual/range {v2 .. v13}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5544
    :goto_0
    return-void

    .line 5539
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5540
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public findFocus(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 15
    .parameter "accessibilityNodeId"
    .parameter "focusType"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5551
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewRootImpl;

    .line 5552
    .local v14, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_0

    iget-object v2, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 5553
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-virtual/range {v2 .. v13}, Landroid/view/AccessibilityInteractionController;->findFocusClientThread(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5564
    :goto_0
    return-void

    .line 5559
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5560
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public focusSearch(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 15
    .parameter "accessibilityNodeId"
    .parameter "direction"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5571
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewRootImpl;

    .line 5572
    .local v14, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_0

    iget-object v2, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 5573
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-virtual/range {v2 .. v13}, Landroid/view/AccessibilityInteractionController;->focusSearchClientThread(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5584
    :goto_0
    return-void

    .line 5579
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5580
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 14
    .parameter "accessibilityNodeId"
    .parameter "action"
    .parameter "arguments"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5489
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 5490
    .local v13, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v13, :cond_0

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 5491
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5502
    :goto_0
    return-void

    .line 5497
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5498
    :catch_0
    move-exception v2

    goto :goto_0
.end method