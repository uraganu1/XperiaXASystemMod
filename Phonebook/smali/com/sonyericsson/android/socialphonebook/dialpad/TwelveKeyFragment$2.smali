.class Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$2;
.super Ljava/lang/Object;
.source "TwelveKeyFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->setDialpadEditTextSize()V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$2;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;)Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 227
    return-void
.end method
