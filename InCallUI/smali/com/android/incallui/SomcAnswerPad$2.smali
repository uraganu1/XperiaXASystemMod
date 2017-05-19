.class Lcom/android/incallui/SomcAnswerPad$2;
.super Ljava/lang/Object;
.source "SomcAnswerPad.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SomcAnswerPad;->showUpgradeRequestDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcAnswerPad;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcAnswerPad;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcAnswerPad;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/incallui/SomcAnswerPad$2;->this$0:Lcom/android/incallui/SomcAnswerPad;

    iput-object p2, p0, Lcom/android/incallui/SomcAnswerPad$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 149
    const-string/jumbo v0, "onClick() -- Decline video"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad$2;->this$0:Lcom/android/incallui/SomcAnswerPad;

    invoke-virtual {v0}, Lcom/android/incallui/SomcAnswerPad;->dismissVideoRequestPopup()V

    .line 151
    iget-object v0, p0, Lcom/android/incallui/SomcAnswerPad$2;->this$0:Lcom/android/incallui/SomcAnswerPad;

    invoke-static {v0}, Lcom/android/incallui/SomcAnswerPad;->-get0(Lcom/android/incallui/SomcAnswerPad;)Lcom/android/incallui/SomcIncomingCallAnswerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcAnswerPad$2;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/incallui/SomcIncomingCallAnswerListener;->onDecline(Landroid/content/Context;)V

    .line 148
    return-void
.end method
