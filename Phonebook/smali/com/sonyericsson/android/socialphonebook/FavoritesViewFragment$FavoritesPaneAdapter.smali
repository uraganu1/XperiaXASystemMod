.class final Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoritesViewFragment.java"

# interfaces
.implements Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FavoritesPaneAdapter"
.end annotation


# instance fields
.field private mBidiFormatter:Landroid/text/BidiFormatter;

.field private mCellSize:I

.field private mColumns:I

.field private mPhotoLoader:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    return v0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mPhotoLoader:Lcom/android/contacts/photomanager/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 438
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mPhotoLoader:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 441
    :cond_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 436
    return-void
.end method

.method private bindRcsPresence(Lcom/sonyericsson/movablepanes/data/ContactInfo;Landroid/widget/ImageView;)V
    .locals 8
    .param p1, "data"    # Lcom/sonyericsson/movablepanes/data/ContactInfo;
    .param p2, "rcsIconView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 526
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get10(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getContactId()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->isRcsCapable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    const v2, 0x7f020079

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 528
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getContactPresence()I

    move-result v1

    .line 531
    .local v1, "presence":I
    const-string/jumbo v2, "com.sonymobile.rcs"

    .line 532
    invoke-virtual {p1}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getContactStatusResPackage()Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    if-ne v7, v1, :cond_1

    const/4 v0, 0x1

    .line 535
    .local v0, "isRcsContact":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 537
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.sonymobile.rcs"

    .line 536
    invoke-static {v7, v2, v3}, Lcom/android/contacts/common/util/BitmapUtil;->getRCSeCapableIcon(ILandroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 538
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 533
    .end local v0    # "isRcsContact":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isRcsContact":Z
    goto :goto_1

    .line 531
    .end local v0    # "isRcsContact":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isRcsContact":Z
    goto :goto_1

    .line 540
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private calcColumnCount(I)I
    .locals 3
    .param p1, "layoutWidth"    # I

    .prologue
    .line 546
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)I

    move-result v1

    div-int v1, p1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 547
    .local v0, "columns":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)I

    move-result v1

    rem-int v1, p1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_0

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 550
    :cond_0
    return v0
.end method


# virtual methods
.method protected bindPaneView(ILcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;)V
    .locals 18
    .param p1, "position"    # I
    .param p2, "view"    # Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;

    .prologue
    .line 478
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->photoView:Landroid/widget/ImageView;

    .line 479
    .local v4, "photoView":Landroid/widget/ImageView;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->rcsIconView:Landroid/widget/ImageView;

    .line 480
    .local v14, "rcsIconView":Landroid/widget/ImageView;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 481
    .local v12, "nameView":Landroid/widget/TextView;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->gradientLayout:Landroid/widget/RelativeLayout;

    .line 482
    .local v10, "gradientLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->quickContactBadge:Landroid/widget/QuickContactBadge;

    .line 483
    .local v13, "quickContactBadge":Landroid/widget/QuickContactBadge;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->get(I)Lcom/sonyericsson/movablepanes/data/ContactInfo;

    move-result-object v2

    .line 484
    .local v2, "data":Lcom/sonyericsson/movablepanes/data/ContactInfo;
    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getContactId()J

    move-result-wide v6

    .line 485
    .local v6, "id":J
    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getContactName()Ljava/lang/String;

    move-result-object v11

    .line 486
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getPhotoUri()Landroid/net/Uri;

    move-result-object v5

    .line 488
    .local v5, "photoUri":Landroid/net/Uri;
    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getContactId()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get11(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)J

    move-result-wide v16

    cmp-long v3, v8, v16

    if-nez v3, :cond_0

    .line 489
    const/4 v3, 0x4

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 491
    const v8, 0x7f020035

    .line 490
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    return-void

    .line 494
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 495
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 498
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual {v3, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 500
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 509
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->bindRcsPresence(Lcom/sonyericsson/movablepanes/data/ContactInfo;Landroid/widget/ImageView;)V

    .line 511
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter$1;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;J)V

    invoke-virtual {v13, v3}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mPhotoLoader:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 522
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)I

    move-result v8

    sget-object v9, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 521
    invoke-virtual/range {v3 .. v9}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;JILcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 477
    return-void

    .line 503
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/content/Context;

    move-result-object v3

    .line 504
    const v8, 0x7f090202

    .line 503
    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 505
    .local v15, "unknownNameText":Ljava/lang/CharSequence;
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCellSize()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    return v0
.end method

.method public getColumnsCount()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/movablepanes/data/ContactInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->get(I)Lcom/sonyericsson/movablepanes/data/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->getItem(I)Lcom/sonyericsson/movablepanes/data/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->get(I)Lcom/sonyericsson/movablepanes/data/ContactInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/data/ContactInfo;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationIndex(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 579
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, -0x1

    .line 580
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    div-int v2, p2, v2

    mul-int/2addr v1, v2

    .line 579
    add-int/2addr v0, v1

    return v0

    .line 582
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    div-int v2, p2, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "index"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f0e002a

    .line 464
    if-eqz p2, :cond_0

    .line 465
    move-object v1, p2

    .line 466
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;

    .line 473
    .local v0, "holder":Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->bindPaneView(ILcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;)V

    .line 474
    return-object v1

    .line 468
    .end local v0    # "holder":Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get6(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04007a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 469
    .restart local v1    # "v":Landroid/view/View;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;-><init>(Landroid/view/View;)V

    .line 470
    .restart local v0    # "holder":Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;
    invoke-virtual {v1, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x1

    return v0
.end method

.method public isInteractive(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public updateLocation(ILandroid/graphics/Rect;I)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "layoutWidth"    # I

    .prologue
    .line 556
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->calcColumnCount(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    .line 557
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    div-int v2, p3, v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    .line 559
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    div-int v1, p1, v2

    .line 561
    .local v1, "row":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->-get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 562
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    rem-int v2, p1, v2

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v0, v2, -0x1

    .line 567
    .local v0, "col":I
    :goto_0
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    mul-int/2addr v2, v0

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 568
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    mul-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 569
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    add-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 570
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mCellSize:I

    add-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 554
    return-void

    .line 564
    .end local v0    # "col":I
    :cond_0
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;->mColumns:I

    rem-int v0, p1, v2

    .restart local v0    # "col":I
    goto :goto_0
.end method
