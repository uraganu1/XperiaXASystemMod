.class Lcom/android/contacts/quickcontact/QuickContactActivity$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendDataUsageFeedback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "usageType"    # Ljava/lang/String;

    .prologue
    .line 464
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$1$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 478
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 464
    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 463
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x2

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 403
    .local v8, "entryTagObject":Ljava/lang/Object;
    if-eqz v8, :cond_0

    instance-of v0, v8, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    if-eqz v0, :cond_0

    move-object v7, v8

    .line 407
    check-cast v7, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;

    .line 408
    .local v7, "entryTag":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;
    invoke-virtual {v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 409
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;->getId()I

    move-result v6

    .line 411
    .local v6, "dataId":I
    const/4 v0, -0x2

    if-ne v6, v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0, v9}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap13(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Intent;)V

    .line 413
    return-void

    .line 404
    .end local v6    # "dataId":I
    .end local v7    # "entryTag":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EntryTag was not used correctly"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void

    .line 418
    .restart local v6    # "dataId":I
    .restart local v7    # "entryTag":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryTag;
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v11, "call"

    .line 420
    .local v11, "usageType":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 421
    .local v10, "intentUri":Landroid/net/Uri;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 422
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "smsto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 421
    if-nez v0, :cond_3

    .line 423
    :cond_2
    invoke-virtual {v9}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 421
    if-eqz v0, :cond_4

    .line 424
    :cond_3
    const-string/jumbo v11, "short_text"

    .line 428
    :cond_4
    if-lez v6, :cond_5

    .line 429
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->sendDataUsageFeedback(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_0
    const-string/jumbo v0, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 436
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 435
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isCallingInPinnedModeAndNotify(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    return-void

    .line 431
    :cond_5
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Invalid Data ID"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_6
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v3, 0x7f0901da

    invoke-virtual {v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 442
    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    .line 439
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 445
    :cond_7
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 452
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get21(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 454
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get10(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 456
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0, v9}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap15(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Intent;)V

    .line 459
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-set3(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 460
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0, v9}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 401
    return-void
.end method
