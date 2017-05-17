.class public final Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.super Landroid/app/Fragment;
.source "FavoritesViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ViewHolder;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$DelayedMove;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$EmptyAnimationListener;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactClickListener;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$TransferViewOnLayoutListener;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoader;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$1;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$2;,
        Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$3;
    }
.end annotation


# static fields
.field public static final FAVORITES_ORDER_KEY:Ljava/lang/String; = "favorites_order"

.field private static final LOADER_ID:I = 0x1

.field private static final NO_SPEED:F = 0.0f

.field public static final REQUEST_CODE_PICK_CONTACT:I = 0x2b


# instance fields
.field private mBadgeSize:I

.field private mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

.field private mContactsModel:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

.field private mContext:Landroid/content/Context;

.field private final mDataContentObserver:Landroid/database/ContentObserver;

.field private mEmptyView:Landroid/view/View;

.field private mFavoritesAdapter:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

.field private mFavoritesLoaderListener:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListWidth:I

.field private final mOnQueryCompleteListener:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

.field private mOrientation:I

.field private mOutOfBoxView:Landroid/view/View;

.field private mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

.field private mRearrangeListener:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;

.field private mShowOutOfBox:Z

.field private mShowRcsData:Z

.field private mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

.field private final mTabStateObserver:Lcom/sonyericsson/android/socialphonebook/TabStateObserver;

.field private mTransferContactId:J

.field private mTransferHandler:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

.field private mTransferPosition:I

.field private mTransferView:Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

.field private mTransferViewOnLayoutListener:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$TransferViewOnLayoutListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mBadgeSize:I

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mShowRcsData:Z

    return v0
.end method

.method static synthetic -get11(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferContactId:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferHandler:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

    return-object v0
.end method

.method static synthetic -get13(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferPosition:I

    return v0
.end method

.method static synthetic -get14(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/transfer/TransferLayout;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferView:Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContactsModel:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mFavoritesAdapter:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOnQueryCompleteListener:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/movablepanes/paneview/PaneView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mRearrangeListener:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferContactId:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->getPaneHorizontalPadding()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Z)V
    .locals 0
    .param p1, "isFavoriteViewVisible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->setFavoriteViewVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->setOutOfBoxVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isStarred"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->updateContactStarred(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "orientation"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->updateListLayout(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 106
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferContactId:J

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferPosition:I

    .line 110
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mListWidth:I

    .line 112
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOrientation:I

    .line 136
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mDataContentObserver:Landroid/database/ContentObserver;

    .line 149
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOnQueryCompleteListener:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

    .line 159
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTabStateObserver:Lcom/sonyericsson/android/socialphonebook/TabStateObserver;

    .line 78
    return-void
.end method

.method private createScrollDynamics()Lcom/sonyericsson/movablepanes/util/SpringDynamics;
    .locals 5

    .prologue
    .line 276
    const/high16 v2, 0x43fa0000    # 500.0f

    .line 277
    .local v2, "stiffness":F
    const/high16 v0, 0x40000000    # 2.0f

    .line 278
    .local v0, "damping":F
    new-instance v1, Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    invoke-direct {v1}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;-><init>()V

    .line 279
    .local v1, "scrollDynamics":Lcom/sonyericsson/movablepanes/util/SpringDynamics;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->setFriction(F)V

    .line 280
    const/high16 v3, 0x43fa0000    # 500.0f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/movablepanes/util/SpringDynamics;->setSpring(FF)V

    .line 282
    return-object v1
.end method

.method private getPaneHorizontalPadding()I
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initializeOutOfBoxView(Landroid/view/View;)V
    .locals 3
    .param p1, "outOfBoxView"    # Landroid/view/View;

    .prologue
    .line 250
    const v2, 0x7f0e0153

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, "skipAddTextView":Landroid/view/View;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$4;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v2, 0x7f0e0155

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "addContactsTextView":Landroid/view/View;
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$5;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method private initializeView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040079

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0e014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mEmptyView:Landroid/view/View;

    .line 225
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mShowOutOfBox:Z

    if-eqz v1, :cond_0

    .line 226
    const v1, 0x7f0e014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOutOfBoxView:Landroid/view/View;

    .line 227
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOutOfBoxView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->initializeOutOfBoxView(Landroid/view/View;)V

    .line 229
    :cond_0
    const v1, 0x7f0e0156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferView:Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    .line 231
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferHandler:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

    .line 233
    const v1, 0x7f0e0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->createScrollDynamics()Lcom/sonyericsson/movablepanes/util/SpringDynamics;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setScrollDynamics(Lcom/sonyericsson/movablepanes/util/Dynamics;)V

    .line 237
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    sget v2, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->TRANSFER_TARGET_TAG:I

    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 238
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferHandler:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$MyTransferHandler;

    .line 237
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setTag(ILjava/lang/Object;)V

    .line 240
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;

    invoke-direct {v1, p0, v5}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mFavoritesLoaderListener:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;

    .line 241
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mFavoritesAdapter:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesPaneAdapter;

    .line 243
    return-object v0
.end method

.method private restartLoader()V
    .locals 4

    .prologue
    .line 1084
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mFavoritesLoaderListener:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoaderListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1083
    return-void
.end method

.method private setFavoriteViewVisibility(Z)V
    .locals 3
    .param p1, "isFavoriteViewVisible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1071
    if-eqz p1, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferView:Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->setVisibility(I)V

    .line 1073
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferView:Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setOutOfBoxVisibility(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 1048
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mShowOutOfBox:Z

    if-eqz v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOutOfBoxView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferView:Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    :goto_0
    return-void

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setShowOutOfBoxFavorites(Landroid/content/Context;Z)V

    .line 1055
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mShowOutOfBox:Z

    .line 1056
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOutOfBoxView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1057
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOutOfBoxView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContactsModel:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->setFavoriteViewVisibility(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateContactStarred(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isStarred"    # Z

    .prologue
    .line 362
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 364
    .local v0, "updateStarredFlagIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 361
    return-void
.end method

.method private updateContactsStarred(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "isStarred"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "contactUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    .line 378
    .local v0, "updateStarredFlagIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 375
    return-void
.end method

.method private updateListLayout(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 387
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mListWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOrientation:I

    if-eq p2, v0, :cond_1

    .line 388
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mListWidth:I

    .line 389
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOrientation:I

    .line 386
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 290
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->restartLoader()V

    .line 286
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 331
    packed-switch p1, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 333
    :pswitch_0
    const/4 v0, 0x0

    .line 334
    .local v0, "pickedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p3, :cond_0

    .line 335
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 336
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 335
    if-eqz v1, :cond_2

    .line 337
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 338
    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    .line 337
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 343
    .end local v0    # "pickedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 344
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->updateContactsStarred(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 339
    .restart local v0    # "pickedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "pickedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "pickedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 173
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    .line 174
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 175
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mRearrangeListener:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$OnFavoritesRearrangeListener;

    .line 178
    :cond_0
    instance-of v0, p1, Lcom/sonyericsson/android/socialphonebook/TabStateController;

    if-eqz v0, :cond_1

    .line 179
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/TabStateController;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTabStateObserver:Lcom/sonyericsson/android/socialphonebook/TabStateObserver;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/TabStateController;->register(Lcom/sonyericsson/android/socialphonebook/TabStateObserver;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 171
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContactsModel:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mHandler:Landroid/os/Handler;

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mBadgeSize:I

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getShowOutOfBoxFavorites(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mShowOutOfBox:Z

    .line 191
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isRcsTapiEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mShowRcsData:Z

    .line 185
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 202
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->initializeView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->scroll(F)V

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setOnItemActionListener(Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;)V

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->pause()V

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferView:Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->setTransferListener(Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;)V

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContactsModel:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactsModel;->saveOrder()V

    .line 304
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferView:Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactTransferListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->setTransferListener(Lcom/sonyericsson/movablepanes/transfer/TransferLayout$TransferListener;)V

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactLongClickListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactClickListener;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactClickListener;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactClickListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mPaneView:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$ContactActionListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->setOnItemActionListener(Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;)V

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 294
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 208
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mShowRcsData:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 210
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mDataContentObserver:Landroid/database/ContentObserver;

    .line 209
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    .line 212
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_FAVORITE_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mOnQueryCompleteListener:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->queryAsync(Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferView:Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferViewOnLayoutListener:Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$TransferViewOnLayoutListener;

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 323
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mShowRcsData:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_FAVORITE_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->cancelQuery(Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;)V

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 319
    :cond_0
    return-void
.end method

.method public startDropAnimation(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "target"    # Landroid/graphics/Rect;
    .param p2, "endRunner"    # Ljava/lang/Runnable;

    .prologue
    .line 934
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;->mTransferView:Lcom/sonyericsson/movablepanes/transfer/TransferLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/movablepanes/transfer/TransferLayout;->getSurrogateTransferView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;

    .line 936
    .local v1, "v":Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 938
    .local v0, "animate":Landroid/view/ViewPropertyAnimator;
    if-eqz p2, :cond_0

    .line 939
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 942
    :cond_0
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 943
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 944
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 945
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 946
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 948
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$6;

    invoke-direct {v2, p0, v1}, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$6;-><init>(Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;Lcom/sonyericsson/android/socialphonebook/ui/widget/DragFavoritesBitmapView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 955
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 933
    return-void
.end method
