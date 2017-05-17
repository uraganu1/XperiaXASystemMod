.class Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;
.super Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/TextWatcherFormatterAsyncCreator;
.source "TwelveKeyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialpadTextWatcherFormatterCreator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    .line 161
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/TextWatcherFormatterAsyncCreator;-><init>(Landroid/content/Context;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onTextWatcherCreated(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->-set1(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;)Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;)Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment$DialpadTextWatcherFormatterCreator;->this$0:Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/dialpad/TwelveKeyFragment;)Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    return-void
.end method
