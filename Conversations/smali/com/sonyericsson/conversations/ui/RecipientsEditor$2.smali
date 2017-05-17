.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHadOneReceipient:Z

.field mIsInputLastSeparator:Z

.field mRemovedText:Z

.field mZeroWidthSpaceRemoved:Z

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mHadOneReceipient:Z

    .line 294
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 16
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 347
    if-eqz p1, :cond_9

    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserAllowedToUseMessaging()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 350
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mZeroWidthSpaceRemoved:Z

    if-eqz v14, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 353
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 355
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "currentText":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    .line 358
    .local v10, "len":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap12(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    .line 360
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mRemovedText:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap0(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 363
    const/16 v14, 0x200b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 366
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get5(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 367
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mRemovedText:Z

    if-eqz v14, :cond_a

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get5(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v14

    invoke-interface {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;->onEditorDeleteText()V

    .line 374
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-set3(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get5(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get5(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v14

    invoke-interface {v14, v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;->onEditorContentChanged(Ljava/lang/String;)V

    .line 381
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getAllRecipientCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get6(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)I

    move-result v15

    if-lt v14, v15, :cond_5

    .line 382
    invoke-static {}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get0()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 383
    .local v12, "start":I
    invoke-static {}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get0()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 384
    .local v5, "end":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_4

    const/4 v14, -0x1

    if-eq v5, v14, :cond_4

    .line 385
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 387
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap9(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    .line 390
    .end local v5    # "end":I
    .end local v12    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap1(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z

    move-result v6

    .line 392
    .local v6, "endsWithNewLine":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mIsInputLastSeparator:Z

    if-eqz v14, :cond_7

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isPerformingCompletion()Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mRemovedText:Z

    if-eqz v14, :cond_b

    .line 396
    :cond_6
    :goto_1
    const/4 v14, 0x2

    if-lt v10, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->convertAllRecipients()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 397
    const/16 v14, 0x200b

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 401
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mRemovedText:Z

    if-nez v14, :cond_e

    .line 402
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/4 v14, 0x1

    if-le v10, v14, :cond_e

    .line 403
    add-int/lit8 v14, v10, -0x1

    const-class v15, Landroid/text/Annotation;

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v10, v15}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/Annotation;

    array-length v14, v14

    if-nez v14, :cond_e

    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get9(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 408
    const/4 v13, 0x0

    .line 409
    .local v13, "tokenListWasFiltered":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get8(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->getNameAndNumbers()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "item$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 410
    .local v8, "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    invoke-static {v8}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get2(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get9(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get9(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 348
    .end local v4    # "currentText":Ljava/lang/String;
    .end local v6    # "endsWithNewLine":Z
    .end local v8    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v9    # "item$iterator":Ljava/util/Iterator;
    .end local v10    # "len":I
    .end local v13    # "tokenListWasFiltered":Z
    :cond_9
    return-void

    .line 370
    .restart local v4    # "currentText":Ljava/lang/String;
    .restart local v10    # "len":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get5(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v14

    invoke-interface {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;->onEditorAddText()V

    goto/16 :goto_0

    .line 393
    .restart local v6    # "endsWithNewLine":Z
    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v14

    if-gt v10, v14, :cond_6

    .line 394
    add-int/lit8 v14, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_1

    .line 414
    .restart local v8    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .restart local v9    # "item$iterator":Ljava/util/Iterator;
    .restart local v13    # "tokenListWasFiltered":Z
    :cond_c
    const/4 v13, 0x1

    goto :goto_2

    .line 418
    .end local v8    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_d
    if-eqz v13, :cond_e

    .line 419
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap6(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 420
    .local v3, "curr":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get9(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get9(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-interface {v14, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    .line 421
    .local v11, "recipients":[Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get9(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14, v11}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap7(Lcom/sonyericsson/conversations/ui/RecipientsEditor;[Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->hasFocus()Z

    move-result v15

    invoke-static {v14, v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap13(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)V

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14, v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap11(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/CharSequence;)V

    .line 430
    .end local v3    # "curr":Ljava/lang/CharSequence;
    .end local v9    # "item$iterator":Ljava/util/Iterator;
    .end local v11    # "recipients":[Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v13    # "tokenListWasFiltered":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap8(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V

    .line 432
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mRemovedText:Z

    if-eqz v14, :cond_f

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->reportRecipientsChange(Z)V

    .line 346
    :goto_3
    return-void

    .line 437
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mHadOneReceipient:Z

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap2(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z

    move-result v7

    .line 443
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mIsInputLastSeparator:Z

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v14}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get4(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)C

    move-result v14

    const/16 v15, 0x2c

    if-ne v14, v15, :cond_11

    const/4 v1, 0x0

    .line 447
    .local v1, "condition1":Z
    :goto_5
    if-nez v7, :cond_12

    move v2, v6

    .line 449
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v1, :cond_13

    :goto_7
    invoke-virtual {v14, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->reportRecipientsChange(Z)V

    goto :goto_3

    .line 437
    .end local v1    # "condition1":Z
    :cond_10
    const/4 v7, 0x0

    .local v7, "gainedFirstRecipient":Z
    goto :goto_4

    .line 443
    .end local v7    # "gainedFirstRecipient":Z
    :cond_11
    const/4 v1, 0x1

    .restart local v1    # "condition1":Z
    goto :goto_5

    .line 447
    :cond_12
    const/4 v2, 0x1

    .local v2, "condition2":Z
    goto :goto_6

    .line 449
    .end local v2    # "condition2":Z
    :cond_13
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    .line 311
    check-cast v0, Landroid/text/Spannable;

    invoke-static {}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get0()Ljava/lang/Object;

    move-result-object v3

    add-int v4, p2, p3

    .line 312
    const/16 v5, 0x12

    .line 311
    invoke-interface {v0, v3, p2, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 313
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    add-int v4, p2, p4

    const-class v5, Landroid/text/style/ImageSpan;

    invoke-interface {v0, p2, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    invoke-static {v3, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-set0(Lcom/sonyericsson/conversations/ui/RecipientsEditor;[Landroid/text/style/ImageSpan;)[Landroid/text/style/ImageSpan;

    .line 316
    if-le p3, p4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mRemovedText:Z

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap2(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mHadOneReceipient:Z

    .line 320
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mRemovedText:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 321
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 320
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 321
    const/16 v3, 0x200b

    .line 320
    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mZeroWidthSpaceRemoved:Z

    .line 309
    return-void

    :cond_0
    move v0, v2

    .line 316
    goto :goto_0

    :cond_1
    move v1, v2

    .line 320
    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 325
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mIsInputLastSeparator:Z

    .line 327
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 328
    .local v1, "len":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getSelectionEnd()I

    move-result v2

    .line 331
    .local v2, "selection":I
    if-lez v1, :cond_1

    if-ne v1, v2, :cond_1

    .line 332
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 333
    .local v0, "c":C
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v3, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap4(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v3, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-set2(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)C

    .line 338
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->mIsInputLastSeparator:Z

    .line 324
    .end local v0    # "c":C
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$2;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-set2(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)C

    goto :goto_0
.end method
