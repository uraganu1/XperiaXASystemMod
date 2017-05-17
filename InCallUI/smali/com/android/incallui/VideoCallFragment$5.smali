.class Lcom/android/incallui/VideoCallFragment$5;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/VideoCallFragment;->showSwitchFailureDialog(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/VideoCallFragment;

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$5;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/incallui/VideoCallFragment$5;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallFragment;->dismissPendingDialogs()V

    .line 1502
    return-void
.end method
