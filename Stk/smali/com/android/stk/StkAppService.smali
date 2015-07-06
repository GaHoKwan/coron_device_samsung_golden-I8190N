.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$2;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$MessageHandler;,
        Lcom/android/stk/StkAppService$DelayedCmd;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;
    }
.end annotation


# static fields
.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private final DELAY_TIME_FOR_RESET:I

.field private lastSelectedItem:Ljava/lang/String;

.field private launchBrowser:Z

.field public final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mCmdInProgress:Z

.field private mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/stk/StkAppService$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

.field public mIsMainMenu:Z

.field private mIsStartedByUser:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMenuIsVisibile:Z

.field public mMenuItemBlock:Z

.field private mMessageHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private volatile mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSetEventList:[Z

.field private mStkService:Lcom/android/internal/telephony/cat/AppInterface;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private responseNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 92
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 93
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 94
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 95
    iput-object v1, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 96
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 99
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 100
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 101
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 102
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 104
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    .line 110
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mMessageHandler:Landroid/os/Handler;

    .line 112
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuItemBlock:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mIsMainMenu:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mIsStartedByUser:Z

    .line 163
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/stk/StkAppService;->DELAY_TIME_FOR_RESET:I

    .line 176
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 346
    return-void
.end method

.method static synthetic access$1000(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleSessionEnd()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleDelayedCmd()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatEventDownload;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleEvent(Lcom/android/internal/telephony/cat/CatEventDownload;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mIsStartedByUser:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    return p1
.end method

.method private callDelayedMsg()V
    .locals 2

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 514
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 515
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 516
    return-void
.end method

.method private canLaunchBrowser()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 818
    const-string v8, "canLaunchBrowser"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 820
    .local v1, iContext:Landroid/content/Context;
    const/4 v3, 0x0

    .line 821
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 825
    .local v0, am:Landroid/app/ActivityManager;
    const-string v8, "activity"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #am:Landroid/app/ActivityManager;
    check-cast v0, Landroid/app/ActivityManager;

    .line 826
    .restart local v0       #am:Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 827
    const-string v7, "Activity Manager is NULL"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    :cond_0
    :goto_0
    return v6

    .line 831
    :cond_1
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 832
    .local v5, runningTaskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v5, :cond_2

    .line 834
    const-string v7, "runningTaskInfo == null"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_2
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 839
    .local v4, runInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v8, "Getting first Running task info"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, packName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Value of package name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.browser"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 846
    const-string v6, "Package Name matches"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v6, v7

    .line 847
    goto :goto_0
.end method

.method private canLaunchDisptextDialog()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 762
    const-string v10, "canLaunchDisptextDialog"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 764
    .local v2, iContext:Landroid/content/Context;
    const/4 v5, 0x0

    .line 765
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 770
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 771
    if-nez v5, :cond_0

    .line 772
    const-string v9, "Package Manager is NULL"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    :goto_0
    return v8

    .line 777
    :cond_0
    const-string v10, "activity"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #am:Landroid/app/ActivityManager;
    check-cast v0, Landroid/app/ActivityManager;

    .line 778
    .restart local v0       #am:Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 779
    const-string v9, "Activity Manager is NULL"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "android.intent.category.HOME"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v5, v10, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 785
    .local v1, homeInfo:Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_2

    .line 786
    const-string v9, "homdInfo is NULL"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_2
    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 790
    .local v3, origPackName:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value of original Packgage name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 793
    .local v7, runningTaskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v7, :cond_3

    .line 795
    const-string v9, "runningTaskInfo == null"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_3
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 800
    .local v6, runInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v10, "Getting first Running task info"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    iget-object v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, packName:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value of package name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    iget-object v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.stk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 807
    :cond_4
    const-string v9, "Package Name matches"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v8, v9

    .line 812
    goto/16 :goto_0
.end method

.method private distroyMenuActivity()V
    .locals 4

    .prologue
    .line 1068
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    const-string v1, "com.android.stk"

    const-string v2, "com.android.stk.StkMenuActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    const/high16 v1, 0x1400

    .line 1073
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    .line 1075
    const-string v2, "STATE"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1077
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1078
    return-void
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1043
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4

    goto :goto_1
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private getItemName(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    .line 1435
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 1436
    .local v2, menu:Lcom/android/internal/telephony/cat/Menu;
    if-nez v2, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return-object v3

    .line 1439
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 1440
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v4, p1, :cond_2

    .line 1441
    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x18

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 563
    if-nez p1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iput-object p1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 571
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v3, :cond_4

    .line 572
    :cond_2
    const-string v2, "unlockMenuActivityBlock()"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unlockMenuActivityBlock()V

    .line 578
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    sget-object v2, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 744
    :cond_3
    :goto_2
    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_f

    .line 746
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    goto :goto_0

    .line 575
    :cond_4
    const-string v2, "lockMenuActivityBlock()"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->lockMenuActivityBlock()V

    goto :goto_1

    .line 581
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 582
    iget-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    iput-boolean v3, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 583
    iget-object v3, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 584
    iget-object v3, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 612
    :goto_3
    iget-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-eqz v3, :cond_7

    .line 614
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchTextDialog()V

    goto :goto_2

    .line 585
    :cond_5
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v3, :cond_6

    .line 586
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_3

    .line 589
    :cond_6
    const-string v3, ""

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_3

    .line 616
    :cond_7
    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-nez v2, :cond_3

    .line 618
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->canLaunchDisptextDialog()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 620
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchTextDialog()V

    goto :goto_2

    .line 625
    :cond_8
    const-string v2, "Can not display Normal Priority text"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 627
    const-string v3, "op"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    .line 629
    const-string v4, "response id"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 630
    const-string v4, "error code"

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    const-string v3, "additional info"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 632
    const-string v3, "additional info data"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/stk/StkAppService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 639
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 640
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto/16 :goto_2

    .line 643
    :pswitch_2
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 644
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 645
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->removeMenu()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 646
    const-string v2, "Uninstall App"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    iput-object v4, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 648
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    .line 653
    :goto_4
    iget-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    if-eqz v2, :cond_9

    .line 654
    invoke-direct {p0, v4}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    .line 657
    :cond_9
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 658
    const-string v3, "op"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 659
    const-string v3, "response id"

    const/16 v4, 0xe

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/stk/StkAppService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 661
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/cat/AppInterface;->sentTerminalResponseForSetupMenu(Z)V

    goto/16 :goto_2

    .line 650
    :cond_a
    const-string v2, "Install App"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;)V

    goto :goto_4

    .line 665
    :pswitch_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchInputActivity()V

    goto/16 :goto_2

    :pswitch_4
    move v0, v1

    .line 670
    goto/16 :goto_2

    .line 676
    :pswitch_5
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventMessage()V

    move v0, v1

    .line 677
    goto/16 :goto_2

    .line 680
    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_STK_DoNotDisplay_SIMRefresh"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 681
    const-string v0, "Do not display a toast for SIM Refresh"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_2

    .line 682
    :cond_b
    const-string v0, "BV"

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 683
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventMessage()V

    move v0, v1

    goto/16 :goto_2

    .line 692
    :pswitch_7
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    sget-object v3, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    if-ne v2, v3, :cond_c

    .line 693
    const-string v2, "LAUNCH_IF_NOT_ALREADY_LAUNCHED "

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->canLaunchBrowser()Z

    move-result v2

    if-nez v2, :cond_c

    .line 695
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 696
    const-string v3, "op"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 698
    const-string v4, "response id"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 699
    const-string v4, "error code"

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 700
    const-string v3, "additional info"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 701
    const-string v3, "additional info data"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 702
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/stk/StkAppService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 706
    :cond_c
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 707
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_2

    .line 710
    :pswitch_8
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 712
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const v3, 0x7f06000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 713
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 716
    :cond_d
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_2

    .line 719
    :pswitch_9
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchToneDialog()V

    goto/16 :goto_2

    .line 722
    :pswitch_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getNumberOfEventList()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getEventList()[I

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/stk/StkAppService;->processSetEventList(I[I)V

    goto/16 :goto_2

    .line 725
    :pswitch_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getinitLanguage()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/stk/StkAppService;->processLanguageNotification(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 728
    :pswitch_c
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 729
    const-string v2, "OPEN CHANNEL"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 732
    :pswitch_d
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 733
    const-string v2, "CLOSE CHANNEL"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 739
    :pswitch_e
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventMessage()V

    .line 740
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    move v0, v1

    goto/16 :goto_2

    .line 748
    :cond_f
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 894
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 897
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 900
    const-string v0, "help"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 902
    const-string v2, "response id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1025
    :pswitch_0
    const-string v0, "Unknown result id"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 904
    :pswitch_1
    const-string v2, "RES_ID_MENU_SELECTION"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    const-string v2, "menu selection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 906
    sget-object v3, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 1028
    :cond_1
    :goto_1
    :pswitch_2
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 909
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getItemName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 910
    if-eqz v0, :cond_2

    .line 911
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 915
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    goto :goto_1

    .line 913
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_2

    .line 920
    :pswitch_4
    const-string v2, "RES_ID_INPUT"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    const-string v2, "input"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 922
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v3

    .line 923
    if-eqz v3, :cond_3

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v3, :cond_3

    .line 924
    const-string v0, "YES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 926
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto :goto_1

    .line 928
    :cond_3
    if-eqz v0, :cond_4

    .line 929
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_1

    .line 931
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 932
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto :goto_1

    .line 937
    :pswitch_5
    const-string v0, "RES_ID_CONFIRM"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 938
    const-string v0, "confirm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 939
    sget-object v0, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_2

    :pswitch_6
    goto :goto_1

    .line 941
    :pswitch_7
    if-eqz v2, :cond_5

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 945
    :pswitch_8
    if-eqz v2, :cond_6

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 947
    if-eqz v2, :cond_1

    .line 948
    iput-boolean v4, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 949
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    goto/16 :goto_1

    .line 945
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 953
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 954
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 955
    if-eqz v2, :cond_1

    .line 956
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchCallMsg()V

    goto/16 :goto_1

    .line 960
    :pswitch_a
    const-string v0, "Open Channel Command response"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 962
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 963
    if-eqz v2, :cond_7

    .line 964
    const-string v0, "User Confirmed"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    const-string v0, "OPEN CHANNEL"

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchBIPChannel(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 968
    :cond_7
    const-string v0, "User did not Confirm!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 972
    :pswitch_b
    const-string v0, "Close Channel Command response"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    if-eqz v2, :cond_8

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 975
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 976
    if-eqz v2, :cond_9

    .line 977
    const-string v0, "User Confirmed"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    const-string v0, "CLOSE CHANNEL"

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchBIPChannel(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 973
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_5

    .line 981
    :cond_9
    const-string v0, "User did not Confirm!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 987
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 990
    :pswitch_d
    const-string v0, "RES_ID_BACKWARD"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 991
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 994
    :pswitch_e
    const-string v0, "RES_ID_END_SESSION"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 998
    :pswitch_f
    const-string v0, "RES_ID_TIMEOUT"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v0, :cond_a

    .line 1006
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1008
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1012
    :pswitch_10
    const-string v0, "RES_ID_GENERAL_ERROR"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    const-string v0, "error code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1014
    const-string v2, "additional info"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1017
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ResultCode;->fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1018
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(Z)V

    .line 1019
    if-ne v2, v4, :cond_1

    .line 1020
    const-string v0, "additional info data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1021
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfoData(I)V

    goto/16 :goto_1

    .line 902
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_10
    .end packed-switch

    .line 906
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 939
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private handleDelayedCmd()V
    .locals 2

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$DelayedCmd;

    .line 453
    .local v0, cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 462
    .end local v0           #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 455
    .restart local v0       #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 458
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleSessionEnd()V

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleEvent(Lcom/android/internal/telephony/cat/CatEventDownload;)V
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0x82

    const/16 v7, 0x81

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, additionalInfo:[B
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->getEvent()I

    move-result v3

    aget-boolean v2, v2, v3

    if-ne v2, v5, :cond_0

    .line 468
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->getEvent()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 510
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 470
    :pswitch_1
    const-string v2, "send user activity event to RIL"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    new-instance v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v8, v7, v3}, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;-><init>(III[B)V

    .line 473
    .local v1, envelope:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onEventDownload(Lcom/android/internal/telephony/cat/CatEnvelopeMessage;)V

    .line 474
    const-string v2, "gsm.sim.userEvent"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->getEvent()I

    move-result v3

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 478
    .end local v1           #envelope:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    :pswitch_2
    const-string v2, "send Idle screen event to RIL"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    new-instance v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;-><init>(III[B)V

    .line 481
    .restart local v1       #envelope:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onEventDownload(Lcom/android/internal/telephony/cat/CatEnvelopeMessage;)V

    .line 482
    const-string v2, "gsm.sim.screenEvent"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->getEvent()I

    move-result v3

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 486
    .end local v1           #envelope:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send setting language event to RIL, language = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 488
    const/16 v2, 0x2d

    aput-byte v2, v0, v4

    .line 489
    aput-byte v6, v0, v5

    .line 490
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 491
    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 492
    new-instance v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v8, v7, v0}, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;-><init>(III[B)V

    .line 494
    .restart local v1       #envelope:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onEventDownload(Lcom/android/internal/telephony/cat/CatEnvelopeMessage;)V

    goto/16 :goto_0

    .line 497
    .end local v1           #envelope:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "browser termination event to RIL, cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->getBrowserTerminationCause()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 499
    const/16 v2, -0x4c

    aput-byte v2, v0, v4

    .line 500
    aput-byte v5, v0, v5

    .line 501
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatEventDownload;->getBrowserTerminationCause()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 502
    new-instance v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v8, v7, v0}, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;-><init>(III[B)V

    .line 504
    .restart local v1       #envelope:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onEventDownload(Lcom/android/internal/telephony/cat/CatEnvelopeMessage;)V

    goto/16 :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 519
    const-string v0, "handleSessionEnd()"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 521
    iput-object v3, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 522
    const-string v0, "unlockMenuActivityBlock()"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unlockMenuActivityBlock()V

    .line 527
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 529
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mIsMainMenu:Z

    .line 532
    :cond_0
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mIsStartedByUser:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isRunningStk()Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 533
    const-string v0, "distroyMenuActivity"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->distroyMenuActivity()V

    .line 538
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 539
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    .line 544
    :goto_1
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    if-eqz v0, :cond_2

    .line 545
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 546
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    const-string v0, "before release wakeup"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 559
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->enableKeyguard()V

    .line 561
    return-void

    .line 535
    :cond_4
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    if-eqz v0, :cond_1

    .line 536
    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto :goto_0

    .line 541
    :cond_5
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto :goto_1

    .line 556
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 435
    sget-object v0, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 447
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 443
    :pswitch_0
    const-string v0, "Command is Informative!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isRunningStk()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 857
    const-string v7, "isRunningStk"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 859
    .local v2, iContext:Landroid/content/Context;
    const/4 v0, 0x0

    .line 864
    .local v0, am:Landroid/app/ActivityManager;
    const-string v7, "activity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #am:Landroid/app/ActivityManager;
    check-cast v0, Landroid/app/ActivityManager;

    .line 865
    .restart local v0       #am:Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 866
    const-string v6, "Activity Manager is NULL"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    :cond_0
    :goto_0
    return v5

    .line 870
    :cond_1
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 871
    .local v4, runningTaskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v4, :cond_2

    .line 873
    const-string v6, "runningTaskInfo == null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 877
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 878
    .local v3, runInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v7, "Getting first Running task info"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, className:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Value of class name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.stk.StkMenuActivity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 884
    const-string v5, "Class Name matches"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v5, v6

    .line 885
    goto :goto_0
.end method

.method private launchBIPChannel(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1499
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1500
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1501
    :cond_0
    const-string v1, "Sending..."

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1504
    :cond_1
    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1505
    const-string v1, "Launch BIP Channel"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1506
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1508
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1509
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1510
    return-void
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x400

    .line 1166
    if-nez p1, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1170
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings.url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1175
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1176
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1195
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1197
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1198
    sget-object v0, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1210
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1215
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1216
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1178
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifiedUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1180
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1190
    :cond_3
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v2, "csc.preferences_name"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1191
    const-string v2, "homepage"

    const-string v3, "http://google.com/"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchBrowser: homeURL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1193
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1200
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1203
    :pswitch_1
    const/high16 v0, 0x800

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1206
    :pswitch_2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private launchCallMsg()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1220
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v3

    iget-object v1, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 1223
    .local v1, msg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1224
    :cond_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const v4, 0x7f06000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1225
    .local v0, message:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1227
    .end local v0           #message:Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1229
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1231
    .local v2, toast:Landroid/widget/Toast;
    const/16 v3, 0x50

    invoke-virtual {v2, v3, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1232
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1233
    return-void
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 1144
    sget-object v0, Lcom/android/stk/StkAppService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1152
    iget-object v0, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1155
    :goto_0
    const-string v0, "Launch Dialog"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1157
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1161
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1162
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1163
    return-void

    .line 1146
    :pswitch_0
    const-string v0, "OPEN CHANNEL"

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_0

    .line 1149
    :pswitch_1
    const-string v0, "CLOSE CHANNEL"

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_0

    .line 1144
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchEventMessage()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1105
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 1106
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1110
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1111
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v0}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1112
    iput v7, v0, Landroid/os/Message;->arg1:I

    .line 1113
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1115
    :cond_2
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->disableKeyguard()V

    .line 1117
    new-instance v3, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1118
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1120
    const/high16 v1, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1121
    const v0, 0x102000b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1123
    const v1, 0x1020006

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1125
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 1126
    iget-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1135
    :goto_1
    iget-object v1, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1138
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 1139
    const/16 v0, 0x50

    invoke-virtual {v3, v0, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1140
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1128
    :cond_3
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private launchInputActivity()V
    .locals 3

    .prologue
    .line 1081
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1082
    const/high16 v1, 0x1000

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1084
    const-string v1, "com.android.stk"

    const-string v2, "com.android.stk.StkInputActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    const-string v1, "INPUT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1086
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1087
    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    .locals 4
    .parameter

    .prologue
    .line 1048
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    const-string v0, "com.android.stk"

    const-string v2, "com.android.stk.StkMenuActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    const/high16 v0, 0x1400

    .line 1052
    if-nez p1, :cond_0

    .line 1054
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1056
    const-string v2, "STATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1063
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1064
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1065
    return-void

    .line 1059
    :cond_0
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1061
    const-string v2, "STATE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchTextDialog()V
    .locals 3

    .prologue
    .line 1090
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1091
    const/high16 v1, 0x5880

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1096
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1097
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1098
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v0}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    const v1, 0x5b8d80

    if-ne v0, v1, :cond_0

    .line 1099
    const-string v0, "sustained text. It\'ll be delete with new display text"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 1102
    :cond_0
    return-void
.end method

.method private launchToneDialog()V
    .locals 3

    .prologue
    .line 1424
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/ToneDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1425
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1429
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1430
    const-string v1, "TONE"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1431
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1432
    return-void
.end method

.method private processLanguageNotification(Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processLanguageNotification language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", init = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1355
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1356
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1357
    const-string v2, "op"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1358
    if-ne p2, v4, :cond_0

    .line 1360
    const-string v2, "Language info is null, and init language"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1361
    const-string p1, "en"

    .line 1363
    :cond_0
    if-nez p2, :cond_1

    if-nez p1, :cond_1

    .line 1365
    const-string v0, "Language info is null, and not init language"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1396
    :goto_0
    return-void

    .line 1369
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1370
    if-nez v2, :cond_2

    .line 1371
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1387
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1388
    const-string v0, "response id"

    const/16 v2, 0xe

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1395
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1373
    :cond_2
    :try_start_1
    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1374
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1375
    if-eqz v3, :cond_3

    if-nez v4, :cond_4

    .line 1376
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 1378
    :cond_4
    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1379
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1380
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 1390
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1391
    const-string v2, "response id"

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1392
    const-string v2, "error code"

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    const-string v0, "additional info"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private processSetEventList(I[I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1282
    const-string v2, "processSetEventList"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v1

    .line 1284
    :goto_0
    if-ge v3, p1, :cond_1

    .line 1285
    aget v2, p2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1284
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 1287
    :sswitch_0
    const-string v2, "gsm.sim.userEvent"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    aput-boolean v0, v2, v7

    goto :goto_1

    .line 1291
    :sswitch_1
    const-string v2, "gsm.sim.screenEvent"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    aput-boolean v0, v2, v8

    goto :goto_1

    .line 1295
    :sswitch_2
    const-string v2, "gsm.sim.lenguageEvent"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    const/4 v4, 0x7

    aput-boolean v0, v2, v4

    goto :goto_1

    .line 1299
    :sswitch_3
    const-string v2, "gsm.sim.browserEvent"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    const/16 v4, 0x8

    aput-boolean v0, v2, v4

    goto :goto_1

    .line 1303
    :sswitch_4
    const-string v2, "processSetEventList data"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/cat/AppInterface;->setEventListDataAvailable(Z)V

    goto :goto_1

    .line 1307
    :sswitch_5
    const-string v2, "processSetEventList channel"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1308
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/cat/AppInterface;->setEventListChannelStatus(Z)V

    goto :goto_1

    :sswitch_6
    move v2, v1

    .line 1311
    :goto_2
    const/16 v4, 0x14

    if-ge v2, v4, :cond_0

    .line 1312
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    aput-boolean v1, v4, v2

    .line 1311
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1313
    :cond_0
    const-string v2, "gsm.sim.userEvent"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v2, "gsm.sim.screenEvent"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v2, "gsm.sim.lenguageEvent"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v2, "gsm.sim.browserEvent"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1323
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1324
    const-string v2, "op"

    invoke-virtual {v3, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v2, v1

    .line 1325
    :goto_3
    if-ge v2, p1, :cond_2

    .line 1326
    aget v4, p2, v2

    if-eqz v4, :cond_3

    aget v4, p2, v2

    if-eq v4, v0, :cond_3

    aget v4, p2, v2

    if-eq v4, v6, :cond_3

    aget v4, p2, v2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    aget v4, p2, v2

    if-eq v4, v7, :cond_3

    aget v4, p2, v2

    if-eq v4, v8, :cond_3

    aget v4, p2, v2

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    aget v4, p2, v2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    aget v4, p2, v2

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    aget v4, p2, v2

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    aget v4, p2, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    aget v4, p2, v2

    const/16 v5, 0xff

    if-eq v4, v5, :cond_3

    move v0, v1

    .line 1342
    :cond_2
    if-eqz v0, :cond_4

    .line 1343
    const-string v0, "response id"

    const/16 v1, 0xe

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1350
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkAppService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1351
    return-void

    .line 1325
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1345
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1346
    const-string v2, "response id"

    const/16 v4, 0x18

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1347
    const-string v2, "error code"

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1348
    const-string v0, "additional info"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1285
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xff -> :sswitch_6
    .end sparse-switch
.end method

.method private removeMenu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1449
    :try_start_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 1457
    :goto_0
    return v0

    .line 1453
    :catch_0
    move-exception v1

    .line 1454
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1457
    goto :goto_0
.end method

.method private unlockMenuActivityBlock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1475
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mMenuItemBlock:Z

    if-nez v0, :cond_0

    .line 1484
    :goto_0
    return-void

    .line 1479
    :cond_0
    const-string v0, "unlockMenuActivityBlock"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkAppService;->mMenuItemBlock:Z

    .line 1482
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has message! : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 318
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_0

    .line 319
    monitor-enter p0

    .line 321
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 322
    :catch_0
    move-exception v0

    goto :goto_1

    .line 326
    :cond_0
    return-void
.end method


# virtual methods
.method public clearmIsStartedByUser()V
    .locals 1

    .prologue
    .line 1513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkAppService;->mIsStartedByUser:Z

    .line 1514
    return-void
.end method

.method declared-synchronized disableKeyguard()V
    .locals 2

    .prologue
    .line 1468
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "STK"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 1470
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    :cond_0
    monitor-exit p0

    return-void

    .line 1468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enableKeyguard()V
    .locals 1

    .prologue
    .line 1461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 1463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    :cond_0
    monitor-exit p0

    return-void

    .line 1461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getMainMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 2

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, mainMenu:Lcom/android/internal/telephony/cat/Menu;
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    .line 306
    :cond_0
    return-object v0
.end method

.method getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method indicateMenuVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    .line 292
    return-void
.end method

.method public isAirplaneMode()Z
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/cat/AppInterface;->isAirplaneMode()Z

    move-result v0

    return v0
.end method

.method lockMenuActivityBlock()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1487
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mMenuItemBlock:Z

    if-ne v0, v2, :cond_0

    .line 1496
    :goto_0
    return-void

    .line 1491
    :cond_0
    const-string v0, "lockMenuActivityBlock"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1494
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuItemBlock:Z

    .line 1495
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMessageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x14

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    .line 200
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 203
    const-string v3, " Unable to get Service handle"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 208
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "Stk App Service"

    invoke-direct {v2, v6, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 209
    .local v2, serviceThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 210
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 211
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 213
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 215
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/stk/StkAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 216
    .local v1, pm:Landroid/os/PowerManager;
    const v3, 0x3000001a

    const-string v4, "STK"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 220
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/android/stk/StkAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 222
    new-array v3, v5, [Z

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    .line 223
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_1

    .line 224
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mSetEventList:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    :cond_1
    new-instance v3, Lcom/android/stk/StkAppService$MessageHandler;

    invoke-direct {v3, p0, v6}, Lcom/android/stk/StkAppService$MessageHandler;-><init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mMessageHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 270
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 271
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 235
    if-nez p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 241
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 246
    .local v1, msg:Landroid/os/Message;
    const-string v2, "op"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 247
    iget v2, v1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 249
    :pswitch_1
    const-string v2, "cmd message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 264
    :goto_1
    :pswitch_2
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 252
    :pswitch_3
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 259
    :pswitch_4
    const-string v2, "event"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 279
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 281
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    .line 282
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    .line 284
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 285
    return-void
.end method
