.class Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$1;
.super Ljava/lang/Object;
.source "TwelveKeyFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;
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
    .line 109
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 113
    sparse-switch p2, :sswitch_data_0

    .line 144
    :cond_0
    return v2

    .line 137
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 138
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 139
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;)Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 140
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;)Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x43 -> :sswitch_0
        0x90 -> :sswitch_0
        0x91 -> :sswitch_0
        0x92 -> :sswitch_0
        0x93 -> :sswitch_0
        0x94 -> :sswitch_0
        0x95 -> :sswitch_0
        0x96 -> :sswitch_0
        0x97 -> :sswitch_0
        0x98 -> :sswitch_0
        0x99 -> :sswitch_0
        0x9b -> :sswitch_0
        0x9d -> :sswitch_0
    .end sparse-switch
.end method
