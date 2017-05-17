.class public Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
.super Landroid/widget/RelativeLayout;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;
.implements Landroid/widget/Checkable;


# static fields
.field public static final MODE_CONTACT_LIST:I = 0x0

.field public static final MODE_PICK_M_CHOICE:I = 0x2

.field public static final MODE_PICK_S_CHOICE:I = 0x1


# instance fields
.field private mBidiFormatter:Landroid/text/BidiFormatter;

.field private mCheckView:Landroid/widget/CheckedTextView;

.field protected mCheckable:Landroid/widget/Checkable;

.field private mContext:Landroid/content/Context;

.field private mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderVisible:Z

.field private mHighlightStyle:Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

.field private mHighlightedPrefix:[C

.field private mIconImageView:Landroid/widget/ImageView;

.field private mIconSyncCallImageView:Landroid/widget/ImageView;

.field private mListItemContentView:Landroid/widget/RelativeLayout;

.field private mMode:I

.field private mNameView:Landroid/widget/TextView;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mQuickContactView:Landroid/widget/QuickContactBadge;

.field private mSnsIconView:Landroid/widget/ImageView;

.field private mStatusView:Landroid/widget/TextView;

.field private mSubLineLayout:Landroid/view/ViewGroup;

.field private mTypeView:Landroid/widget/TextView;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;-><init>(Landroid/content/Context;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderVisible:Z

    .line 96
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mContext:Landroid/content/Context;

    .line 97
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mMode:I

    .line 99
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 101
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->getInstance()Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHighlightStyle:Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

    .line 103
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->createViews(I)V

    .line 93
    return-void
.end method

.method private createViews(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const v3, 0x7f0e00d0

    const v2, 0x7f0e008a

    .line 275
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 277
    .local v0, "inflater":Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    .line 306
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "got a wrong mode of ContactListItemView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :pswitch_0
    const v1, 0x7f04004d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 281
    const v1, 0x7f0e0071

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mIconSyncCallImageView:Landroid/widget/ImageView;

    .line 282
    const v1, 0x7f0e00db

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    .line 283
    const v1, 0x7f0e00da

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mSnsIconView:Landroid/widget/ImageView;

    .line 284
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mQuickContactView:Landroid/widget/QuickContactBadge;

    .line 285
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckView:Landroid/widget/CheckedTextView;

    .line 286
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setCheckable(Landroid/widget/Checkable;)V

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mQuickContactView:Landroid/widget/QuickContactBadge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mQuickContactView:Landroid/widget/QuickContactBadge;

    .line 311
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    .line 310
    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setLayoutDirection(I)V

    .line 314
    const v1, 0x7f0e00bc

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mNameView:Landroid/widget/TextView;

    .line 315
    const v1, 0x7f0e0084

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mPresenceView:Landroid/widget/ImageView;

    .line 316
    const v1, 0x7f0e00ce

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 317
    const v1, 0x7f0e00cf

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mListItemContentView:Landroid/widget/RelativeLayout;

    .line 274
    return-void

    .line 291
    :pswitch_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 292
    const v1, 0x7f04004c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 293
    const v1, 0x7f0e0088

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mIconImageView:Landroid/widget/ImageView;

    .line 299
    :goto_1
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mQuickContactView:Landroid/widget/QuickContactBadge;

    .line 300
    const v1, 0x7f0e0087

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mSubLineLayout:Landroid/view/ViewGroup;

    .line 301
    const v1, 0x7f0e00ad

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mTypeView:Landroid/widget/TextView;

    .line 302
    const v1, 0x7f0e0089

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    goto :goto_0

    .line 295
    :cond_0
    const v1, 0x7f040046

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 296
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckView:Landroid/widget/CheckedTextView;

    goto :goto_1

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPresenceIconResourceId(I)I
    .locals 1
    .param p1, "aStatus"    # I

    .prologue
    .line 356
    packed-switch p1, :pswitch_data_0

    .line 368
    const v0, 0x7f0200d1

    return v0

    .line 358
    :pswitch_0
    const v0, 0x7f0200d2

    return v0

    .line 361
    :pswitch_1
    const v0, 0x7f0200ce

    return v0

    .line 363
    :pswitch_2
    const v0, 0x7f0200cf

    return v0

    .line 365
    :pswitch_3
    const v0, 0x7f0200d0

    return v0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 334
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 335
    .local v0, "spannable":Landroid/text/SpannableString;
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 336
    const/16 v4, 0x21

    .line 335
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 337
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v0, :cond_0

    .line 376
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 373
    :cond_0
    return-void
.end method

.method public getCheckView()Landroid/widget/CheckedTextView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckView:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method public getDataTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mIconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mMode:I

    return v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPresenceImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mPresenceView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getQuickContactBadge()Landroid/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mQuickContactView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSnsImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mSnsIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubLineLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mSubLineLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSyncCallImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mIconSyncCallImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTypeTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mTypeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0

    .line 389
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mListItemContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 322
    return-void
.end method

.method public setCheckable(Landroid/widget/Checkable;)V
    .locals 0
    .param p1, "aCheckable"    # Landroid/widget/Checkable;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckable:Landroid/widget/Checkable;

    .line 380
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 394
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 344
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHighlightStyle:Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->constructHighlightStyle(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object p1

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHighlightedPrefix([C)V
    .locals 5
    .param p1, "upperCasePrefix"    # [C

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 257
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 258
    :cond_0
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHighlightedPrefix:[C

    .line 256
    :goto_0
    return-void

    .line 260
    :cond_1
    array-length v1, p1

    .line 261
    .local v1, "len":I
    new-array v0, v1, [C

    .line 262
    .local v0, "array":[C
    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 263
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHighlightedPrefix:[C

    goto :goto_0
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 242
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderVisible:Z

    .line 235
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHeaderVisible:Z

    goto :goto_0
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "unknownNameText"    # Ljava/lang/CharSequence;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 267
    return-void
.end method

.method public showData(Landroid/database/Cursor;II)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "mimeTypeColumnIndex"    # I
    .param p3, "dataColumnIndex"    # I

    .prologue
    .line 201
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "mimetype":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p3, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 205
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    .line 207
    .local v0, "chrSeq":Ljava/lang/CharSequence;
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 211
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setData(Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method

.method public showDataType(Landroid/database/Cursor;III)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "mimeTypeColumnIndex"    # I
    .param p3, "typeColumnIndex"    # I
    .param p4, "labelColumnIndex"    # I

    .prologue
    .line 216
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mTypeView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "mimetype":Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "label":Ljava/lang/String;
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 223
    .local v3, "type":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 224
    .local v2, "res":Landroid/content/res/Resources;
    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mTypeView:Landroid/widget/TextView;

    invoke-static {v2, v3, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mTypeView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_2
    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mTypeView:Landroid/widget/TextView;

    invoke-static {v2, v3, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 228
    :cond_3
    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mTypeView:Landroid/widget/TextView;

    invoke-static {v2, v3, v0}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public showDisplayName(Landroid/database/Cursor;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameColumnIndex"    # I

    .prologue
    .line 154
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHighlightStyle:Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mHighlightedPrefix:[C

    .line 156
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->constructHighlightStyle(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v0

    .line 161
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 153
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mBidiFormatter:Landroid/text/BidiFormatter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showPresence(Landroid/database/Cursor;I)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "presenceColumnIndex"    # I

    .prologue
    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "presence":I
    const/4 v0, 0x0

    .line 167
    .local v0, "icon":I
    const-string/jumbo v1, ""

    .line 169
    .local v1, "pkg":Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 171
    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string/jumbo v3, "com.sonymobile.rcs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    const-string/jumbo v3, "com.orangelabs.rcs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 172
    if-eqz v3, :cond_1

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mPresenceView:Landroid/widget/ImageView;

    .line 175
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1}, Lcom/android/contacts/common/util/BitmapUtil;->getRCSeCapableIcon(ILandroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 174
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mPresenceView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :goto_1
    return-void

    .line 177
    :cond_1
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getPresenceIconResourceId(I)I

    move-result v0

    .line 178
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mPresenceView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showStatusMessage(Landroid/database/Cursor;II)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "contactIdColumnIndex"    # I
    .param p3, "contactStatusColumnIndex"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 189
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 191
    .local v0, "contactId":J
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mSnsIconView:Landroid/widget/ImageView;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->getContactStatus(Landroid/content/Context;JLandroid/widget/TextView;Landroid/widget/ImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mSnsIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mSnsIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 401
    :cond_0
    return-void
.end method
