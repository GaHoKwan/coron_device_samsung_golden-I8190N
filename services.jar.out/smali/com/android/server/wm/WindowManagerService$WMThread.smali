.class Lcom/android/server/wm/WindowManagerService$WMThread;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WMThread"
.end annotation


# instance fields
.field private final mAllowBootMessages:Z

.field private final mContext:Landroid/content/Context;

.field private final mHaveInputMethods:Z

.field private final mOnlyCore:Z

.field private final mPM:Lcom/android/server/PowerManagerService;

.field mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)V
    .locals 1
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"
    .parameter "allowBootMsgs"
    .parameter "onlyCore"

    .prologue
    .line 862
    const-string v0, "WindowManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 863
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mContext:Landroid/content/Context;

    .line 864
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mPM:Lcom/android/server/PowerManagerService;

    .line 865
    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mHaveInputMethods:Z

    .line 866
    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mAllowBootMessages:Z

    .line 867
    iput-boolean p5, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mOnlyCore:Z

    .line 868
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 872
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 875
    new-instance v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mPM:Lcom/android/server/PowerManagerService;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mHaveInputMethods:Z

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mAllowBootMessages:Z

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mOnlyCore:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZLcom/android/server/wm/WindowManagerService$1;)V

    .line 877
    .local v0, s:Lcom/android/server/wm/WindowManagerService;
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 879
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 881
    monitor-enter p0

    .line 882
    :try_start_0
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 883
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 884
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 888
    const-string v1, "WindowManager"

    const-string v2, "Enabled StrictMode logging for WMThread\'s Looper"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 892
    return-void

    .line 884
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
