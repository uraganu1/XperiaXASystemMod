.class public Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ContactsFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mAccounts:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

.field private mContext:Landroid/content/Context;

.field private mHiddenAccounts:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mAccounts:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mHiddenAccounts:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accounts"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;
    .param p3, "hiddenAccounts"    # Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    .prologue
    .line 857
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 858
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    .line 859
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 860
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 862
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mAccounts:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    .line 863
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mHiddenAccounts:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    .line 857
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 935
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mAccounts:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .line 936
    .local v0, "account":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    if-ltz p2, :cond_1

    .line 937
    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    .line 938
    .local v1, "validChild":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 939
    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 937
    .end local v1    # "validChild":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "validChild":Z
    goto :goto_0

    .line 936
    .end local v1    # "validChild":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "validChild":Z
    goto :goto_0

    .line 941
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public getChildId(II)J
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 947
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 948
    .local v0, "child":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    if-eqz v0, :cond_1

    .line 949
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 950
    .local v1, "childId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_0
    return-wide v2

    .line 952
    .end local v1    # "childId":Ljava/lang/Long;
    :cond_1
    return-wide v2
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 869
    if-nez p4, :cond_0

    .line 870
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040062

    invoke-virtual {v6, v7, p5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 873
    :cond_0
    const v6, 0x1020014

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 874
    .local v4, "text1":Landroid/widget/TextView;
    const v6, 0x1020015

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 875
    .local v5, "text2":Landroid/widget/TextView;
    const v6, 0x1020001

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 877
    .local v0, "checkbox":Landroid/widget/CheckBox;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;

    .line 878
    .local v1, "child":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;
    if-eqz v1, :cond_1

    .line 880
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getVisible()Z

    move-result v3

    .line 881
    .local v3, "groupVisible":Z
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 882
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 884
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 885
    .local v2, "groupTitle":Ljava/lang/CharSequence;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    .end local v2    # "groupTitle":Ljava/lang/CharSequence;
    .end local v3    # "groupVisible":Z
    :goto_0
    return-object p4

    .line 889
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 890
    const v6, 0x7f0900c0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 891
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 959
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mAccounts:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .line 960
    .local v0, "account":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 961
    .local v1, "anyHidden":Z
    :goto_0
    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v2, v3

    return v2

    .line 960
    .end local v1    # "anyHidden":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "anyHidden":Z
    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 966
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mAccounts:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mAccounts:Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountSet;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 976
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f040064

    const v9, 0x1020014

    const/4 v5, 0x0

    .line 903
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;

    .line 904
    .local v0, "account":Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    .line 905
    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    .line 904
    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 907
    .local v1, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v8, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->isLocalAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 908
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v10, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 910
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 911
    .local v2, "text":Landroid/widget/TextView;
    const v5, 0x7f0900c4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 912
    return-object p3

    .line 914
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_0
    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 916
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v10, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 918
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 919
    .restart local v2    # "text":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    return-object p3

    .line 922
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040063

    invoke-virtual {v6, v7, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 924
    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 925
    .local v3, "text1":Landroid/widget/TextView;
    const v6, 0x1020015

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 927
    .local v4, "text2":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v6, v0, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    if-nez v6, :cond_2

    const/16 v5, 0x8

    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 930
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 981
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 986
    const/4 v0, 0x1

    return v0
.end method
