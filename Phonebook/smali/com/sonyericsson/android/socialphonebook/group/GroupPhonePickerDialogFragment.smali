.class public Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupPhonePickerDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;,
        Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_CONTACT_PHONE_MAP:Ljava/lang/String; = "ExtraContactPhoneMap"

.field private static final EXTRA_GROUP_MEMBER_RAW_IDS:Ljava/lang/String; = "ExtraGroupMemberRawIds"

.field private static final EXTRA_SELECTED_IDS:Ljava/lang/String; = "ExtraSelectedIds"


# instance fields
.field public mActionListener:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;

.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContactPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGroupMemberRawIdList:[J

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mSelectedIdsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSetPrimaryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSetPrimaryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSetPrimaryList:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method private buildContentView()Landroid/view/View;
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040090

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, "container":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mListView:Landroid/widget/ListView;

    .line 152
    const v1, 0x7f0e0180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 154
    return-object v0
.end method

.method private getDataItem(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;)Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    .locals 4
    .param p1, "phoneNumber"    # Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;

    .prologue
    .line 184
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;-><init>()V

    .line 186
    .local v0, "dataItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mMime:Ljava/lang/String;

    .line 187
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mPrimaryData:Ljava/lang/String;

    .line 188
    iget-wide v2, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->id:J

    iput-wide v2, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mId:J

    .line 189
    iget-boolean v1, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->isSuperPrimary:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mIsSuperPrimary:J

    .line 190
    iget v1, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->type:I

    iput v1, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mType:I

    .line 191
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->label:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mLabel:Ljava/lang/String;

    .line 192
    iget-wide v2, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->rawContactId:J

    iput-wide v2, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mRawContactId:J

    .line 193
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;->contactName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mContactName:Ljava/lang/String;

    .line 195
    return-object v0

    .line 189
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getListItem(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;)Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    .locals 3
    .param p1, "dataItem"    # Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    .prologue
    .line 208
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mMime:Ljava/lang/String;

    .line 209
    .local v1, "mime":Ljava/lang/String;
    const/4 v0, 0x0

    .line 210
    .local v0, "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mPrimaryData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    .end local v0    # "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    :cond_0
    :goto_0
    return-object v0

    .line 212
    .restart local v0    # "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    .end local v0    # "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;-><init>(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;)V

    .local v0, "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    goto :goto_0
.end method

.method private getListItems()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;>;"
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mGroupMemberRawIdList:[J

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-wide v6, v9, v8

    .line 168
    .local v6, "rawId":J
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mContactPhoneMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 169
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mContactPhoneMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 170
    .local v5, "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "phoneNumber$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;

    .line 171
    .local v3, "phoneNumber":Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->getDataItem(Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;)Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    move-result-object v0

    .line 172
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->getListItem(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;)Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    move-result-object v2

    .line 173
    .local v2, "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->updatePreviouslySelectedItem(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;)V

    goto :goto_1

    .line 166
    .end local v0    # "item":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    .end local v2    # "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    .end local v3    # "phoneNumber":Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;
    .end local v4    # "phoneNumber$iterator":Ljava/util/Iterator;
    .end local v5    # "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;"
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 180
    .end local v6    # "rawId":J
    :cond_2
    return-object v1
.end method

.method public static newInstance(Ljava/util/ArrayList;Ljava/util/HashMap;)Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;",
            ">;>;)",
            "Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "groupMemberRawIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p1, "contactPhoneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/LinkedList<Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$GroupMemberData;>;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "ExtraGroupMemberRawIds"

    invoke-static {p0}, Lcom/google/common/primitives/Longs;->toArray(Ljava/util/Collection;)[J

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 85
    const-string/jumbo v2, "ExtraContactPhoneMap"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 87
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;-><init>()V

    .line 88
    .local v1, "f":Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v1
.end method

.method private unCheckChild(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;I)V
    .locals 6
    .param p1, "listItem"    # Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-boolean v2, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mShowPrimary:Z

    if-eqz v2, :cond_1

    .line 399
    iput-boolean v4, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mShowPrimary:Z

    .line 400
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 401
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 402
    return-void

    .line 405
    :cond_0
    const v2, 0x7f0e01dc

    .line 404
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 407
    .local v0, "primaryIndicator":Landroid/widget/RadioButton;
    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 411
    .end local v0    # "primaryIndicator":Landroid/widget/RadioButton;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSetPrimaryList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 412
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSelectedIdsSet:Ljava/util/Set;

    iget-object v3, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    iget-wide v4, v3, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method private updatePreviouslySelectedItem(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;)V
    .locals 4
    .param p1, "listItem"    # Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    .prologue
    .line 218
    iget v0, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mShowPrimary:Z

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSelectedIdsSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    iget-wide v2, v1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSetPrimaryList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mShowPrimary:Z

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public changePrimarySettingOnDB(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;>;"
    const/4 v2, 0x0

    .line 416
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 417
    :cond_0
    return-void

    .line 420
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    .line 448
    aput-object p1, v1, v2

    .line 420
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 415
    return-void
.end method

.method public changePrimarySettingOnUI(Landroid/view/View;I)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 357
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->getListItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 358
    .local v3, "listItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;>;"
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    .line 359
    .local v2, "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    iget v1, v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    .line 360
    .local v1, "itemType":I
    const/4 v9, 0x5

    if-eq v1, v9, :cond_0

    const/4 v9, 0x4

    if-ne v1, v9, :cond_1

    .line 361
    :cond_0
    return-void

    .line 365
    :cond_1
    const v9, 0x7f0e01dc

    .line 364
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 366
    .local v8, "primaryIndicator":Landroid/widget/RadioButton;
    iget-boolean v9, v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mShowPrimary:Z

    if-nez v9, :cond_2

    .line 367
    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mShowPrimary:Z

    .line 368
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSetPrimaryList:Ljava/util/ArrayList;

    iget-object v10, v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 370
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSelectedIdsSet:Ljava/util/Set;

    iget-object v10, v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    iget-wide v10, v10, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_2
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 374
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    .line 375
    .local v7, "prevListItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    iget v6, v7, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    .line 376
    .local v6, "prevItemType":I
    const/4 v9, 0x5

    if-eq v6, v9, :cond_3

    const/4 v9, 0x4

    if-ne v6, v9, :cond_5

    .line 384
    .end local v6    # "prevItemType":I
    .end local v7    # "prevListItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    :cond_3
    add-int/lit8 v0, p2, 0x1

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 385
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    .line 386
    .local v5, "nextListItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    iget v4, v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    .line 387
    .local v4, "nextItemType":I
    const/4 v9, 0x5

    if-eq v4, v9, :cond_4

    const/4 v9, 0x4

    if-ne v4, v9, :cond_7

    .line 356
    .end local v4    # "nextItemType":I
    .end local v5    # "nextListItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    :cond_4
    return-void

    .line 380
    .restart local v6    # "prevItemType":I
    .restart local v7    # "prevListItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    :cond_5
    if-ne v6, v1, :cond_6

    .line 381
    invoke-direct {p0, v7, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->unCheckChild(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;I)V

    .line 373
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 391
    .end local v6    # "prevItemType":I
    .end local v7    # "prevListItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    .restart local v4    # "nextItemType":I
    .restart local v5    # "nextListItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    :cond_7
    if-ne v4, v1, :cond_8

    .line 392
    invoke-direct {p0, v5, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->unCheckChild(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;I)V

    .line 384
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 141
    .local v0, "targetFragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;

    .end local v0    # "targetFragment":Landroid/app/Fragment;
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mActionListener:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$ActionListener;

    .line 138
    return-void

    .line 144
    .restart local v0    # "targetFragment":Landroid/app/Fragment;
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    const-string/jumbo v2, "Target fragment should implement ActionListener"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "ExtraGroupMemberRawIds"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mGroupMemberRawIdList:[J

    .line 98
    const-string/jumbo v4, "ExtraContactPhoneMap"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 97
    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mContactPhoneMap:Ljava/util/HashMap;

    .line 99
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSelectedIdsSet:Ljava/util/Set;

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string/jumbo v4, "ExtraSelectedIds"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 102
    .local v3, "selectedIds":[J
    if-eqz v3, :cond_0

    .line 103
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSelectedIdsSet:Ljava/util/Set;

    invoke-static {v3}, Lcom/google/common/primitives/Longs;->asList([J)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 107
    .end local v3    # "selectedIds":[J
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->buildContentView()Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "content":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->setAdapter()V

    .line 109
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    const v5, 0x7f090276

    .line 109
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 111
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)V

    const v6, 0x104000a

    .line 109
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 126
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;)V

    const/high16 v6, 0x1040000

    .line 109
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 134
    .local v2, "dialog":Landroid/app/AlertDialog;
    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 353
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->changePrimarySettingOnUI(Landroid/view/View;I)V

    .line 352
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 347
    const-string/jumbo v0, "ExtraSelectedIds"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mSelectedIdsSet:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/common/primitives/Longs;->toArray(Ljava/util/Collection;)[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 348
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 346
    return-void
.end method

.method public setAdapter()V
    .locals 4

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->getListItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mListItems:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mListItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    return-void
.end method
