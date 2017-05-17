.class Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter$1;
.super Ljava/lang/Object;
.source "GroupCreateOrEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;

.field final synthetic val$item:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;
    .param p2, "val$item"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter$1;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter$1;->val$item:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter$1;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->-get0(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter$1;->val$item:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1255
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter$1;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-wrap11(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V

    .line 1253
    return-void
.end method
