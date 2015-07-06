.class public Lcom/sec/android/app/fm/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# static fields
.field static isRunning:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mKeepPlaying:Z

.field private mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

.field private mStopServiceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/NotificationService;->mKeepPlaying:Z

    .line 192
    new-instance v0, Lcom/sec/android/app/fm/NotificationService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationService$1;-><init>(Lcom/sec/android/app/fm/NotificationService;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/fm/NotificationService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/sec/android/app/fm/NotificationService;->mKeepPlaying:Z

    return p1
.end method

.method private createFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.fm.player"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "com.android.fm.player.on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v1, "com.android.fm.player.off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v1, "com.android.fm.player.tune.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "com.android.fm.player.tune.prev"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "com.android.fm.player.tune"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    return-object v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationService;->createFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.fm.notification.service.stop"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->terminate()V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mReceiver:Lcom/sec/android/app/fm/NotificationReceiver;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationService;->mStopServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 129
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/fm/NotificationService;->isRunning:Z

    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationService;->unregisterBroadcastReceiver()V

    .line 134
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "FM NotificationService onDestroy unregister rec"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    iget-boolean v2, p0, Lcom/sec/android/app/fm/NotificationService;->mKeepPlaying:Z

    if-nez v2, :cond_0

    .line 139
    :try_start_0
    const-string v2, "NotificationService"

    const-string v3, "service killed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v2, "FMPlayer"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    .line 141
    .local v1, player:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1           #player:Lcom/samsung/media/fmradio/FMPlayer;
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x1

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 57
    .local v1, n:I
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationService;->registerBroadcastReceiver()V

    .line 58
    sput-boolean v5, Lcom/sec/android/app/fm/NotificationService;->isRunning:Z

    .line 61
    if-eqz p1, :cond_1

    .line 62
    const-string v3, "com.android.fm.notification.service.notification"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    const-string v3, "show.notification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_0

    .line 65
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationService;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "onStartCommand startForeground"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/fm/NotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 84
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "FM NotificationService onStartCommand registered rec"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 87
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.fm.player.on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    const-string v3, "NotificationService"

    const-string v4, "NotificationReceiver.ON_ACTION"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.player.on"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    :cond_2
    :goto_1
    return v1

    .line 77
    .restart local v0       #action:Ljava/lang/String;
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[onStartCommand] WiredHeasetOn is false"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0           #action:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.fm.player.off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    const-string v3, "NotificationService"

    const-string v4, "NotificationReceiver.OFF_ACTION"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.player.off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.fm.player.tune.prev"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 96
    const-string v3, "NotificationService"

    const-string v4, "NotificationReceiver.PREV_ACTION"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.player.tune.prev"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 98
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.fm.player.tune.next"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 99
    const-string v3, "NotificationService"

    const-string v4, "NotificationReceiver.NEXT_ACTION"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fm.player.tune.next"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 103
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.fm.player.tune"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    const-string v3, "NotificationService"

    const-string v4, "NotificationReceiver.TUNE_ACTION"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.fm.player.tune"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, tuneIntent:Landroid/content/Intent;
    const-string v3, "freq"

    const-string v4, "freq"

    sget v5, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/NotificationService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
