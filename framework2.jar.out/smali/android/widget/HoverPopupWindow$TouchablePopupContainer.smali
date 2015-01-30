.class public Landroid/widget/HoverPopupWindow$TouchablePopupContainer;
.super Landroid/widget/FrameLayout;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchablePopupContainer"
.end annotation


# instance fields
.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mIsHoverExitCalled:Z

.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 742
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    .line 743
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 739
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 744
    return-void
.end method
