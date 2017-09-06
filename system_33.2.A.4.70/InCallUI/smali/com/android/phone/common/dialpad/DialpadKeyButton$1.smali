.class Lcom/android/phone/common/dialpad/DialpadKeyButton$1;
.super Ljava/lang/Object;
.source "DialpadKeyButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/common/dialpad/DialpadKeyButton;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;


# direct methods
.method constructor <init>(Lcom/android/phone/common/dialpad/DialpadKeyButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->-wrap0(Lcom/android/phone/common/dialpad/DialpadKeyButton;Z)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadKeyButton$1;->this$0:Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-static {v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->-get0(Lcom/android/phone/common/dialpad/DialpadKeyButton;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method
