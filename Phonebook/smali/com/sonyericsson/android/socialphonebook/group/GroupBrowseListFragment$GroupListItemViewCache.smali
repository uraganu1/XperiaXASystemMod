.class Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupListItemViewCache"
.end annotation


# instance fields
.field public final accountHeader:Landroid/view/View;

.field public final accountHeaderExtraTopPadding:Landroid/view/View;

.field public final accountIcon:Landroid/widget/ImageView;

.field public final accountName:Landroid/widget/TextView;

.field public final groupContainer:Landroid/view/View;

.field public final groupMemberCount:Landroid/widget/TextView;

.field private final groupPhoto:Landroid/widget/ImageView;

.field public final groupTitle:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->groupPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const v0, 0x7f0e013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountName:Landroid/widget/TextView;

    .line 453
    const v0, 0x7f0e013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountIcon:Landroid/widget/ImageView;

    .line 454
    const v0, 0x7f0e0052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->groupTitle:Landroid/widget/TextView;

    .line 455
    const v0, 0x7f0e00ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    .line 456
    const v0, 0x7f0e0160

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    .line 457
    const v0, 0x7f0e015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    .line 458
    const v0, 0x7f0e0162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->groupPhoto:Landroid/widget/ImageView;

    .line 459
    const v0, 0x7f0e0161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->groupContainer:Landroid/view/View;

    .line 451
    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItemViewCache;->mUri:Landroid/net/Uri;

    .line 462
    return-void
.end method
