.class Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;
.super Ljava/lang/Object;
.source "DialpadEditText.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/DialpadEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadEditText;Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/DialpadEditText;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 75
    const/4 v5, 0x0

    .line 76
    .local v5, "min":I
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->length()I

    move-result v4

    .line 78
    .local v4, "max":I
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 79
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getSelectionStart()I

    move-result v8

    .line 80
    .local v8, "selStart":I
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getSelectionEnd()I

    move-result v7

    .line 82
    .local v7, "selEnd":I
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 83
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 90
    .end local v7    # "selEnd":I
    .end local v8    # "selStart":I
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 91
    const-string/jumbo v10, "clipboard"

    .line 90
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 93
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 116
    return v11

    .line 85
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :cond_1
    if-gez v4, :cond_0

    .line 86
    return v11

    .line 95
    .restart local v1    # "clipboard":Landroid/content/ClipboardManager;
    :pswitch_0
    const-string/jumbo v9, ""

    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 96
    return v12

    .line 100
    :pswitch_1
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 101
    .local v0, "clipItem":Landroid/content/ClipData$Item;
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 102
    .local v6, "paste":Ljava/lang/CharSequence;
    if-eqz v6, :cond_2

    .line 104
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "filterString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 106
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/DialpadEditText$MenuHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadEditText;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/DialpadEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 107
    .local v2, "editable":Landroid/text/Editable;
    if-eqz v2, :cond_2

    .line 108
    invoke-interface {v2, v5, v4, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 112
    .end local v2    # "editable":Landroid/text/Editable;
    .end local v3    # "filterString":Ljava/lang/String;
    :cond_2
    return v12

    .line 93
    :pswitch_data_0
    .packed-switch 0x1020021
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
