.class Lcom/android/incallui/AnswerFragment$6;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->showCustomMessageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ENCODING_16BIT_ONE_SEGMENT_CHARACTERS_LIMIT:I

.field private final ENCODING_7BIT_ONE_SEGMENT_CHARACTERS_LIMIT:I

.field private mHasTextInternalChanged:Z

.field private final mSpanObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/incallui/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->-get1(Lcom/android/incallui/AnswerFragment;)I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/android/incallui/AnswerFragment$6;->ENCODING_7BIT_ONE_SEGMENT_CHARACTERS_LIMIT:I

    .line 550
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->-get1(Lcom/android/incallui/AnswerFragment;)I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/incallui/AnswerFragment$6;->ENCODING_16BIT_ONE_SEGMENT_CHARACTERS_LIMIT:I

    .line 553
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment$6;->mSpanObject:Ljava/lang/Object;

    .line 545
    return-void
.end method

.method private handleTextInternalChange(Landroid/text/Editable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 583
    iget-object v8, p0, Lcom/android/incallui/AnswerFragment$6;->mSpanObject:Ljava/lang/Object;

    invoke-interface {p1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 584
    .local v4, "start":I
    iget-object v8, p0, Lcom/android/incallui/AnswerFragment$6;->mSpanObject:Ljava/lang/Object;

    invoke-interface {p1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 585
    .local v2, "end":I
    const/4 v1, -0x1

    .line 587
    .local v1, "delStart":I
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 591
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    .line 592
    .local v0, "calc":[I
    aget v3, v0, v7

    .line 595
    .local v3, "msgLength":I
    aget v8, v0, v9

    packed-switch v8, :pswitch_data_0

    .line 605
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported message encoding:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 597
    :pswitch_1
    iget v8, p0, Lcom/android/incallui/AnswerFragment$6;->ENCODING_7BIT_ONE_SEGMENT_CHARACTERS_LIMIT:I

    if-gt v3, v8, :cond_0

    return-void

    .line 598
    :cond_0
    iget v8, p0, Lcom/android/incallui/AnswerFragment$6;->ENCODING_7BIT_ONE_SEGMENT_CHARACTERS_LIMIT:I

    sub-int v8, v3, v8

    sub-int v1, v2, v8

    .line 608
    :goto_0
    if-ltz v4, :cond_1

    if-gez v2, :cond_3

    .line 609
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid index, start:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 610
    const-string/jumbo v7, ", end:"

    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 610
    const-string/jumbo v7, ", delStart:"

    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    return-void

    .line 601
    :pswitch_2
    iget v8, p0, Lcom/android/incallui/AnswerFragment$6;->ENCODING_16BIT_ONE_SEGMENT_CHARACTERS_LIMIT:I

    if-gt v3, v8, :cond_2

    return-void

    .line 602
    :cond_2
    iget v8, p0, Lcom/android/incallui/AnswerFragment$6;->ENCODING_16BIT_ONE_SEGMENT_CHARACTERS_LIMIT:I

    sub-int v8, v3, v8

    sub-int v1, v2, v8

    .line 603
    goto :goto_0

    .line 608
    :cond_3
    if-ltz v1, :cond_1

    .line 613
    iget-boolean v8, p0, Lcom/android/incallui/AnswerFragment$6;->mHasTextInternalChanged:Z

    if-eqz v8, :cond_5

    :goto_1
    iput-boolean v6, p0, Lcom/android/incallui/AnswerFragment$6;->mHasTextInternalChanged:Z

    .line 614
    iget-boolean v6, p0, Lcom/android/incallui/AnswerFragment$6;->mHasTextInternalChanged:Z

    if-eqz v6, :cond_4

    .line 615
    iget-object v6, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v6}, Lcom/android/incallui/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 616
    const v8, 0x7f0b027a

    .line 615
    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 619
    :cond_4
    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 621
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Character number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    return-void

    :cond_5
    move v6, v7

    .line 613
    goto :goto_1

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    .line 574
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-static {v2}, Lcom/android/incallui/AnswerFragment;->-get1(Lcom/android/incallui/AnswerFragment;)I

    move-result v2

    if-lez v2, :cond_0

    .line 575
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerFragment$6;->handleTextInternalChange(Landroid/text/Editable;)V

    .line 577
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-static {v2}, Lcom/android/incallui/AnswerFragment;->-get0(Lcom/android/incallui/AnswerFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    .line 578
    const/4 v3, -0x1

    .line 577
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 579
    .local v0, "sendButton":Landroid/widget/Button;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 573
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 559
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->-get1(Lcom/android/incallui/AnswerFragment;)I

    move-result v0

    if-lez v0, :cond_0

    .line 567
    check-cast p1, Landroid/text/Spannable;

    .end local p1    # "s":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$6;->mSpanObject:Ljava/lang/Object;

    add-int v1, p2, p4

    .line 568
    const/16 v2, 0x12

    .line 567
    invoke-interface {p1, v0, p2, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 563
    :cond_0
    return-void
.end method
