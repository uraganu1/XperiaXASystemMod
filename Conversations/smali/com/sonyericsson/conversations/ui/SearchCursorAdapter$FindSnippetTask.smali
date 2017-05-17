.class Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;
.super Landroid/os/AsyncTask;
.source "SearchCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindSnippetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/text/SpannableString;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

.field private mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFullText:Ljava/lang/String;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mStyleSpan:Landroid/text/style/StyleSpan;

.field private mTargetString:Ljava/lang/String;

.field private mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Landroid/text/style/ForegroundColorSpan;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/StyleSpan;)V
    .locals 0
    .param p1, "textViewSnippet"    # Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;
    .param p2, "fullText"    # Ljava/lang/String;
    .param p3, "targetString"    # Ljava/lang/String;
    .param p4, "pattern"    # Ljava/util/regex/Pattern;
    .param p5, "foregroundColorSpan"    # Landroid/text/style/ForegroundColorSpan;
    .param p6, "backgroundColorSpan"    # Landroid/text/style/BackgroundColorSpan;
    .param p7, "styleSpan"    # Landroid/text/style/StyleSpan;

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    .line 359
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mFullText:Ljava/lang/String;

    .line 360
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTargetString:Ljava/lang/String;

    .line 361
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mPattern:Ljava/util/regex/Pattern;

    .line 362
    iput-object p5, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 363
    iput-object p6, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    .line 364
    iput-object p7, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mStyleSpan:Landroid/text/style/StyleSpan;

    .line 357
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/text/SpannableString;
    .locals 28
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 370
    :cond_0
    const/16 v24, 0x0

    return-object v24

    .line 373
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mFullText:Ljava/lang/String;

    .line 374
    .local v9, "fullText":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 375
    .local v10, "fullTextLower":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    .line 377
    .local v21, "targetStringLower":Ljava/lang/String;
    const/16 v20, 0x0

    .line 378
    .local v20, "startPos":I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v15

    .line 379
    .local v15, "searchStringLength":I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .line 381
    .local v5, "bodyLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 382
    .local v11, "m":Ljava/util/regex/Matcher;
    if-eqz v11, :cond_2

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 383
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v20

    .line 386
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->getPaint()Landroid/text/TextPaint;

    move-result-object v23

    .line 388
    .local v23, "tp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 389
    .local v16, "searchStringWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v22, v0

    .line 390
    .local v22, "textFieldWidth":F
    const/16 v17, 0x0

    .line 391
    .local v17, "snippetString":Ljava/lang/String;
    cmpl-float v24, v16, v22

    if-lez v24, :cond_4

    .line 392
    add-int v24, v20, v15

    move/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 436
    .end local v17    # "snippetString":Ljava/lang/String;
    :cond_3
    if-eqz v17, :cond_9

    .line 437
    new-instance v18, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 438
    .local v18, "spannable":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 440
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v24, v0

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v25

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v24, v0

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v25

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mStyleSpan:Landroid/text/style/StyleSpan;

    move-object/from16 v24, v0

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v25

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->isCancelled()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 445
    const/16 v24, 0x0

    return-object v24

    .line 394
    .end local v18    # "spannable":Landroid/text/SpannableString;
    .restart local v17    # "snippetString":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->-get0()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 395
    .local v7, "ellipsisWidth":F
    const/high16 v24, 0x40000000    # 2.0f

    mul-float v24, v24, v7

    sub-float v22, v22, v24

    .line 398
    const/4 v14, -0x1

    .line 399
    .local v14, "offset":I
    const/16 v19, -0x1

    .line 400
    .local v19, "start":I
    const/4 v8, -0x1

    .line 407
    .end local v17    # "snippetString":Ljava/lang/String;
    .local v8, "end":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->isCancelled()Z

    move-result v24

    if-nez v24, :cond_3

    .line 408
    add-int/lit8 v14, v14, 0x1

    .line 410
    sub-int v24, v20, v14

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 411
    .local v13, "newstart":I
    add-int v24, v20, v15

    add-int v24, v24, v14

    move/from16 v0, v24

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 413
    .local v12, "newend":I
    move/from16 v0, v19

    if-ne v13, v0, :cond_5

    if-eq v12, v8, :cond_3

    .line 417
    :cond_5
    move/from16 v19, v13

    .line 418
    move v8, v12

    .line 423
    move/from16 v0, v19

    invoke-virtual {v9, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, "candidate":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v24

    cmpl-float v24, v24, v22

    if-gtz v24, :cond_3

    .line 431
    const-string/jumbo v25, "%s%s%s"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    if-nez v19, :cond_6

    const-string/jumbo v24, ""

    :goto_1
    const/16 v27, 0x0

    aput-object v24, v26, v27

    const/16 v24, 0x1

    aput-object v6, v26, v24

    .line 432
    if-ne v8, v5, :cond_7

    const-string/jumbo v24, ""

    :goto_2
    const/16 v27, 0x2

    aput-object v24, v26, v27

    .line 431
    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .local v17, "snippetString":Ljava/lang/String;
    goto :goto_0

    .end local v17    # "snippetString":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->-get0()Ljava/lang/String;

    move-result-object v24

    goto :goto_1

    .line 432
    :cond_7
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->-get0()Ljava/lang/String;

    move-result-object v24

    goto :goto_2

    .line 448
    .end local v6    # "candidate":Ljava/lang/String;
    .end local v7    # "ellipsisWidth":F
    .end local v8    # "end":I
    .end local v12    # "newend":I
    .end local v13    # "newstart":I
    .end local v14    # "offset":I
    .end local v19    # "start":I
    .restart local v18    # "spannable":Landroid/text/SpannableString;
    :cond_8
    return-object v18

    .line 450
    .end local v18    # "spannable":Landroid/text/SpannableString;
    :cond_9
    const/16 v24, 0x0

    return-object v24
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 368
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->doInBackground([Ljava/lang/Void;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/text/SpannableString;)V
    .locals 1
    .param p1, "spannable"    # Landroid/text/SpannableString;

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->mTextViewSnippet:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->requestLayout()V

    .line 458
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->-get1()Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 459
    invoke-static {}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;->-get1()Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/espresso/IdlingConversationsResource;->setIdling()V

    .line 453
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "spannable"    # Ljava/lang/Object;

    .prologue
    .line 453
    check-cast p1, Landroid/text/SpannableString;

    .end local p1    # "spannable":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->onPostExecute(Landroid/text/SpannableString;)V

    return-void
.end method
