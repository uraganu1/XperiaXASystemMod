.class Lcom/android/contacts/quickcontact/QuickContactActivity$3;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 503
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 506
    if-nez p3, :cond_0

    .line 507
    return-void

    :cond_0
    move-object v1, p3

    .line 510
    check-cast v1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 511
    .local v1, "info":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 512
    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 513
    sget-object v6, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    .line 511
    if-eqz v6, :cond_2

    .line 515
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object v7

    .line 514
    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 517
    .local v2, "number":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    .line 518
    const-string/jumbo v7, "layout_inflater"

    .line 517
    invoke-virtual {v6, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 519
    const v7, 0x7f040032

    .line 517
    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, "customTitleView":Landroid/view/View;
    const v6, 0x7f0e00a4

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 522
    .local v5, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 530
    .end local v0    # "customTitleView":Landroid/view/View;
    .end local v2    # "number":Ljava/lang/CharSequence;
    .end local v5    # "titleTextView":Landroid/widget/TextView;
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v7, 0x7f090142

    invoke-virtual {v6, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 529
    invoke-interface {p1, v8, v8, v8, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 533
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap4(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 534
    return-void

    .line 526
    :cond_2
    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 537
    :cond_3
    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, "selectedMimeType":Ljava/lang/String;
    const/4 v3, 0x1

    .line 543
    .local v3, "onlyOneOfMimeType":Z
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get11(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 544
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get15(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v3

    .line 549
    .end local v3    # "onlyOneOfMimeType":Z
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->isNeedToHideSetDefaultOption()Z

    move-result v6

    if-nez v6, :cond_5

    .line 551
    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->isSuperPrimary()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 553
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v7, 0x7f090144

    invoke-virtual {v6, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 552
    const/4 v7, 0x1

    invoke-interface {p1, v8, v7, v8, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 561
    :cond_5
    :goto_2
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get11(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 563
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v7, 0x7f090098

    invoke-virtual {v6, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 562
    const/4 v7, 0x3

    invoke-interface {p1, v8, v7, v8, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 566
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get13(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 505
    :cond_6
    return-void

    .line 545
    .restart local v3    # "onlyOneOfMimeType":Z
    :cond_7
    const-string/jumbo v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 546
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-get14(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v3

    .local v3, "onlyOneOfMimeType":Z
    goto :goto_1

    .line 554
    .end local v3    # "onlyOneOfMimeType":Z
    :cond_8
    if-nez v3, :cond_5

    .line 556
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v7, 0x7f090143

    invoke-virtual {v6, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 555
    const/4 v7, 0x2

    invoke-interface {p1, v8, v7, v8, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2
.end method
