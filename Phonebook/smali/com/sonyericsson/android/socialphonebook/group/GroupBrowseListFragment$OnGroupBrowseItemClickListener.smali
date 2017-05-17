.class Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnGroupBrowseItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;

    move-result-object v0

    .line 422
    .local v0, "entry":Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGroupsEvent;->pushTabEvent(Landroid/content/Context;)V

    .line 426
    :cond_0
    if-eqz v0, :cond_1

    .line 427
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;)Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupListItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;->-wrap0(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$GroupBrowseListAdapter;J)Landroid/net/Uri;

    move-result-object v1

    .line 428
    .local v1, "groupUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment$OnGroupBrowseItemClickListener;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/group/GroupBrowseListFragment;Landroid/net/Uri;)V

    .line 419
    .end local v1    # "groupUri":Landroid/net/Uri;
    :cond_1
    return-void
.end method
