.class Lcom/android/internal/policy/impl/PhoneWindowManager$22;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 6744
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6746
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6747
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6748
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureOn:Z

    .line 6752
    :cond_0
    :goto_0
    return-void

    .line 6749
    :cond_1
    const-string v1, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6750
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenCaptureOn:Z

    goto :goto_0
.end method
