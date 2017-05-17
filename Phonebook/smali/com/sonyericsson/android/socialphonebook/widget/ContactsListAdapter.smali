.class public abstract Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ContactsListAdapter.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;,
        Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$1;
    }
.end annotation


# static fields
.field private static final FLAG_NONE:I


# instance fields
.field private mAlphabet:[Ljava/lang/String;

.field private final mAlphabetLock:Ljava/lang/Object;

.field private mContentChangedCallback:Ljava/lang/Runnable;

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIndexDataSetObserver:Landroid/database/DataSetObserver;

.field private mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mIsUpdateMissed:Z

.field protected mLayout:I

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mQueryCursorChanges:Z

.field private mSeparatorPos:[I

.field protected mShowPresence:Z

.field protected final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mAlphabetLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mAlphabet:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;)Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mIndexer:Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mSeparatorPos:[I

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 6
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aLayout"    # I
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-direct {p0, p1, p3, v4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 82
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mContext:Landroid/content/Context;

    .line 84
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$1;-><init>(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mContentChangedCallback:Ljava/lang/Runnable;

    .line 104
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mAlphabetLock:Ljava/lang/Object;

    .line 109
    iput-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mQueryCursorChanges:Z

    .line 112
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mIsUpdateMissed:Z

    .line 128
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mLayout:I

    .line 129
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mContext:Landroid/content/Context;

    .line 131
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 134
    const-string/jumbo v3, "layout_inflater"

    .line 133
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 136
    const v3, 0x7f090202

    .line 135
    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 138
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v1

    .line 139
    .local v1, "config":Lcom/sonyericsson/android/socialphonebook/Configuration;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getDisableIntegratedAppPresence()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mShowPresence:Z

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 142
    const v4, 0x7f0b0007

    .line 141
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 144
    .local v2, "enableAndroidScrollIndexBoxes":Z
    if-eqz v2, :cond_0

    .line 145
    move-object v0, p0

    .line 146
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$2;-><init>(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mIndexDataSetObserver:Landroid/database/DataSetObserver;

    .line 159
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mIndexDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 125
    .end local v0    # "adapter":Lcom/sonyericsson/android/socialphonebook/widget/IndexedListAdapter;
    :cond_0
    return-void

    .end local v2    # "enableAndroidScrollIndexBoxes":Z
    :cond_1
    move v3, v5

    .line 139
    goto :goto_0
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method protected final bindEmailTypeView(Landroid/widget/TextView;Landroid/database/Cursor;II)V
    .locals 3
    .param p1, "aView"    # Landroid/widget/TextView;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aTypeColumn"    # I
    .param p4, "aLabelColumn"    # I

    .prologue
    .line 421
    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 425
    .local v1, "type":I
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final bindHeaderView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;

    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;

    .line 361
    .local v0, "cache":Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;
    const/4 v2, -0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "indexLetter":Ljava/lang/String;
    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;->mNameView:Landroid/widget/TextView;

    .line 364
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 365
    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f0901a4

    .line 364
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 358
    .end local v0    # "cache":Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;
    .end local v1    # "indexLetter":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected final bindPhoneTypeView(Landroid/widget/TextView;Landroid/database/Cursor;II)V
    .locals 3
    .param p1, "aView"    # Landroid/widget/TextView;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aTypeColumn"    # I
    .param p4, "aLabelColumn"    # I

    .prologue
    .line 379
    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 383
    .local v1, "type":I
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final bindPhoto(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;IJ)V
    .locals 8
    .param p1, "aView"    # Landroid/widget/QuickContactBadge;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aColumn"    # I
    .param p4, "contactId"    # J

    .prologue
    .line 476
    invoke-static {p4, p5}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->getSimAccountType(J)Ljava/lang/String;

    move-result-object v7

    .line 477
    .local v7, "simAccType":Ljava/lang/String;
    const-string/jumbo v0, "com.sonyericsson.adncontacts"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const v0, 0x7f0200b9

    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 479
    return-void

    .line 480
    :cond_0
    const-string/jumbo v0, "com.sonyericsson.adnsub1contacts"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const v0, 0x7f0200b6

    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 482
    return-void

    .line 483
    :cond_1
    const-string/jumbo v0, "com.sonyericsson.adnsub2contacts"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    const v0, 0x7f0200b8

    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 485
    return-void

    .line 488
    :cond_2
    const-wide/16 v2, 0x0

    .line 489
    .local v2, "photoId":J
    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 490
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 494
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    move-object v1, p1

    move-wide v4, p4

    .line 493
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 475
    return-void
.end method

.method protected final bindPostalTypeView(Landroid/widget/TextView;Landroid/database/Cursor;II)V
    .locals 3
    .param p1, "aView"    # Landroid/widget/TextView;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aTypeColumn"    # I
    .param p4, "aLabelColumn"    # I

    .prologue
    .line 400
    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 404
    .local v1, "type":I
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final bindPresence(Landroid/widget/ImageView;Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "aView"    # Landroid/widget/ImageView;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aColumn"    # I

    .prologue
    .line 440
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mShowPresence:Z

    if-eqz v1, :cond_0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 442
    .local v0, "status":I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->getPresenceIconResourceId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 268
    const-string/jumbo v2, "_id"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 270
    .local v0, "id":J
    const-wide/16 v2, -0x2710

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 271
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->bindHeaderView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 267
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public final clearContactPhotos()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->clearCache()V

    .line 318
    return-void
.end method

.method public abstract doOnContentChanged()V
.end method

.method public final getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 201
    .local v0, "cusror":Landroid/database/Cursor;
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursor;

    if-eqz v1, :cond_0

    .line 202
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursor;

    .end local v0    # "cusror":Landroid/database/Cursor;
    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursor;->getIndexer()Lcom/sonyericsson/android/socialphonebook/cursor/Indexer;

    move-result-object v1

    return-object v1

    .line 204
    .restart local v0    # "cusror":Landroid/database/Cursor;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "aPosition"    # I

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x2710

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 519
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mAlphabetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mSeparatorPos:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mSeparatorPos:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mSeparatorPos:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 524
    const/4 v0, 0x0

    return v0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getPresenceIconResourceId(I)I
    .locals 1
    .param p1, "aStatus"    # I

    .prologue
    .line 450
    packed-switch p1, :pswitch_data_0

    .line 462
    const v0, 0x7f0200d1

    return v0

    .line 452
    :pswitch_0
    const v0, 0x7f0200d2

    return v0

    .line 455
    :pswitch_1
    const v0, 0x7f0200ce

    return v0

    .line 457
    :pswitch_2
    const v0, 0x7f0200cf

    return v0

    .line 459
    :pswitch_3
    const v0, 0x7f0200d0

    return v0

    .line 450
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

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mAlphabetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mAlphabet:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 512
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getShouldQueryCursorChanges()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mQueryCursorChanges:Z

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x2

    return v0
.end method

.method public final injectPhotoManagerImp(Lcom/android/contacts/photomanager/ContactPhotoManager;)V
    .locals 0
    .param p1, "managerImpl"    # Lcom/android/contacts/photomanager/ContactPhotoManager;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 324
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 323
    return-void
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "aPosition"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdateMissed()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mIsUpdateMissed:Z

    return v0
.end method

.method protected newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 244
    const-string/jumbo v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 246
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 247
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 249
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;-><init>(Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;)V

    .line 250
    .local v0, "cache":Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 251
    const v4, 0x7f04004b

    .line 252
    const/4 v5, 0x0

    .line 250
    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;->mNameView:Landroid/widget/TextView;

    .line 253
    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 254
    iget-object v1, v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter$HeaderItemCache;->mNameView:Landroid/widget/TextView;

    return-object v1
.end method

.method public final onContentChanged()V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mQueryCursorChanges:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mContentChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mContentChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mIsUpdateMissed:Z

    .line 293
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mIsUpdateMissed:Z

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 279
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 285
    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->pause()V

    .line 284
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public final refreshContactPhotos()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->refreshCache()V

    .line 314
    return-void
.end method

.method public setShouldQueryCursorChanges(Z)V
    .locals 0
    .param p1, "queryCursorChanges"    # Z

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mQueryCursorChanges:Z

    .line 538
    return-void
.end method

.method public final setViewResource(I)V
    .locals 0
    .param p1, "aLayout"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->mLayout:I

    .line 168
    return-void
.end method
