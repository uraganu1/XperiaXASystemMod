.class Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;
.super Ljava/lang/Object;
.source "ViewPagerTabs.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ViewPagerTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTabLongClickListener"
.end annotation


# instance fields
.field final mPosition:I

.field final synthetic this$0:Lcom/android/contacts/list/ViewPagerTabs;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ViewPagerTabs;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/list/ViewPagerTabs;
    .param p2, "position"    # I

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p2, p0, Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;->mPosition:I

    .line 81
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 87
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 88
    .local v2, "screenPos":[I
    iget-object v6, p0, Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-virtual {v6, v2}, Lcom/android/contacts/list/ViewPagerTabs;->getLocationOnScreen([I)V

    .line 90
    iget-object v6, p0, Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-virtual {v6}, Lcom/android/contacts/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-virtual {v6}, Lcom/android/contacts/list/ViewPagerTabs;->getWidth()I

    move-result v5

    .line 92
    .local v5, "width":I
    iget-object v6, p0, Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/list/ViewPagerTabs;

    invoke-virtual {v6}, Lcom/android/contacts/list/ViewPagerTabs;->getHeight()I

    move-result v1

    .line 93
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 95
    .local v3, "screenWidth":I
    iget-object v6, p0, Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;->this$0:Lcom/android/contacts/list/ViewPagerTabs;

    iget-object v6, v6, Lcom/android/contacts/list/ViewPagerTabs;->mPager:Lcom/android/contacts/util/ViewPager;

    invoke-virtual {v6}, Lcom/android/contacts/util/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v6

    iget v7, p0, Lcom/android/contacts/list/ViewPagerTabs$OnTabLongClickListener;->mPosition:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 100
    .local v4, "toast":Landroid/widget/Toast;
    aget v6, v2, v8

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    aget v7, v2, v9

    add-int/2addr v7, v1

    .line 99
    const/16 v8, 0x31

    invoke-virtual {v4, v8, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 102
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 103
    return v9
.end method
