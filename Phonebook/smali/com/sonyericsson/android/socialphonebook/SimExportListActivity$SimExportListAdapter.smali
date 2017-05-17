.class Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportListAdapter;
.super Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;
.source "SimExportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimExportListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;-><init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;Landroid/content/Context;)V

    .line 427
    return-void
.end method


# virtual methods
.method protected final bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;

    .line 471
    .local v1, "cache":Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 472
    .local v0, "buf":Landroid/database/CharArrayBuffer;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;

    iget-boolean v3, v3, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity;->mDisplayOrder:Z

    if-nez v3, :cond_0

    .line 473
    const/16 v3, 0x8

    invoke-interface {p3, v3, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 477
    :goto_0
    iget v2, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 478
    .local v2, "size":I
    if-eqz v2, :cond_1

    .line 479
    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameBuffer:Landroid/database/CharArrayBuffer;

    .line 480
    iget-object v3, v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameView:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v4, v4, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {v3, v4, v5, v2}, Landroid/widget/TextView;->setText([CII)V

    .line 467
    :goto_1
    return-void

    .line 475
    .end local v2    # "size":I
    :cond_0
    const/4 v3, 0x1

    invoke-interface {p3, v3, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_0

    .line 482
    .restart local v2    # "size":I
    :cond_1
    iget-object v3, v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 442
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimExportListActivity$SimExportListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 443
    const v5, 0x7f040026

    .line 442
    invoke-static {v3, v4, v5, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->create(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;

    move-result-object v2

    .line 445
    .local v2, "itemView":Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;
    const v3, 0x7f0e008a

    .line 444
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 446
    .local v1, "check":Landroid/widget/CheckedTextView;
    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->setCheckable(Landroid/widget/Checkable;)V

    .line 448
    const v3, 0x7f0e0083

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 449
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;-><init>()V

    .line 451
    .local v0, "cache":Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;
    const v3, 0x7f0e0086

    .line 450
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ContactNameCache;->mNameView:Landroid/widget/TextView;

    .line 453
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/socialphonebook/widget/ChecklistItem;->setTag(Ljava/lang/Object;)V

    .line 454
    return-object v2
.end method
