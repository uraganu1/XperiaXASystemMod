.class Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupCreateOrEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupMemberListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupMemberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1223
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1224
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->mContext:Landroid/content/Context;

    .line 1225
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    .line 1226
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 1223
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1274
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 1231
    const/4 v9, 0x0

    .line 1232
    .local v9, "viewHolder":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;
    if-nez p2, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1234
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04008c

    invoke-virtual {v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1235
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;

    .end local v9    # "viewHolder":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;
    invoke-direct {v9, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;-><init>(Landroid/view/View;)V

    .line 1236
    .local v9, "viewHolder":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;
    invoke-virtual {p2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1242
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->mGroupMemberList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;

    .line 1243
    .local v8, "item":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    iget-object v0, v9, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;->nameView:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    iget-object v0, v9, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;->photoView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    iget-object v0, v9, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;->deleteView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1247
    iget-object v3, v8, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1246
    const v3, 0x7f0901b1

    .line 1245
    invoke-virtual {v1, v3, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1249
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    iget-object v1, v9, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;->photoView:Landroid/widget/QuickContactBadge;

    iget-wide v2, v8, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mPhotoId:J

    iget-wide v4, v8, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;->mContactId:J

    .line 1250
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 1249
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 1252
    iget-object v0, v9, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;->deleteView:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter$1;

    invoke-direct {v1, p0, v8}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberListAdapter;Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1259
    return-object p2

    .line 1239
    .end local v8    # "item":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMemberItem;
    .local v9, "viewHolder":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "viewHolder":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;
    check-cast v9, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;

    .local v9, "viewHolder":Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$GroupMembersViewHolder;
    goto :goto_0
.end method
