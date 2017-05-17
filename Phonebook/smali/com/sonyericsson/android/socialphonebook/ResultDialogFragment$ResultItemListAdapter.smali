.class final Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;
.super Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
.source "ResultDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResultItemListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aLayout"    # I
    .param p4, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;

    .line 207
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 208
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 206
    return-void
.end method


# virtual methods
.method protected bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;

    .line 242
    .local v6, "cache":Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mDisplayOrder:Z

    if-nez v0, :cond_2

    .line 243
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/database/CharArrayBuffer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p3, v1, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 247
    :goto_0
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/database/CharArrayBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/database/CharArrayBuffer;

    move-result-object v0

    iget v7, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 249
    .local v7, "size":I
    if-eqz v7, :cond_3

    .line 250
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-get1(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/database/CharArrayBuffer;

    move-result-object v1

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/TextView;->setText([CII)V

    .line 257
    .end local v7    # "size":I
    :cond_0
    :goto_1
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/widget/QuickContactBadge;

    move-result-object v1

    .line 258
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 257
    const/4 v3, 0x3

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;->bindPhoto(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;IJ)V

    .line 238
    .end local v6    # "cache":Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;
    :cond_1
    return-void

    .line 245
    .restart local v6    # "cache":Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;
    :cond_2
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-get0(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/database/CharArrayBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v1, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_0

    .line 252
    .restart local v7    # "size":I
    :cond_3
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-get1(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public doOnContentChanged()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "aPosition"    # I

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method protected newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;

    invoke-direct {v0, v3}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;-><init>(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)V

    .line 230
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;
    const v2, 0x7f0e0043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-set0(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 231
    const v2, 0x7f0e0042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-set1(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;Landroid/widget/QuickContactBadge;)Landroid/widget/QuickContactBadge;

    .line 232
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;->-get2(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;)Landroid/widget/QuickContactBadge;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    return-object v1
.end method
