.class Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;
.super Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
.source "GroupDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupDetailAdapter"
.end annotation


# instance fields
.field private mNameIndex:I

.field private mPhotoIdIndex:I

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    .line 799
    const v0, 0x7f040086

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 800
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->bindColumnIndices()V

    .line 798
    return-void
.end method

.method private bindColumnIndices()V
    .locals 1

    .prologue
    .line 807
    const/16 v0, 0x8

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->mPhotoIdIndex:I

    .line 808
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->mNameIndex:I

    .line 806
    return-void
.end method


# virtual methods
.method protected bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 836
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;

    .line 837
    .local v6, "cache":Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;
    if-nez v6, :cond_0

    .line 838
    return-void

    .line 841
    :cond_0
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->photo:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v10}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 842
    const-string/jumbo v0, "contact_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 843
    .local v4, "contactId":J
    iget-object v1, v6, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->photo:Landroid/widget/QuickContactBadge;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->mPhotoIdIndex:I

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->bindPhoto(Landroid/widget/QuickContactBadge;Landroid/database/Cursor;IJ)V

    .line 845
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->photo:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v11}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 846
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->mNameIndex:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 847
    .local v7, "name":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 853
    :goto_0
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;

    invoke-direct {v9}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;-><init>()V

    .line 857
    .local v9, "statusData":Lcom/sonyericsson/android/socialphonebook/util/DataStatus;
    invoke-virtual {v9, p3}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->possibleUpdate(Landroid/database/Cursor;)V

    .line 859
    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 860
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->statusLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 862
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->statusIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, p2}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 863
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 869
    .local v8, "position":Ljava/lang/String;
    const v0, 0x7f0e001f

    invoke-virtual {p1, v0, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 870
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    return-void

    .line 850
    .end local v8    # "position":Ljava/lang/String;
    .end local v9    # "statusData":Lcom/sonyericsson/android/socialphonebook/util/DataStatus;
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/contacts/detail/ContactDisplayUtils;->getProperlyFormatedNameText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 865
    .restart local v9    # "statusData":Lcom/sonyericsson/android/socialphonebook/util/DataStatus;
    :cond_2
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->statusLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 885
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 886
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->isVideoGroupCallingAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$GroupDetailAdapter;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap7(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Landroid/database/Cursor;)V

    .line 884
    :cond_0
    return-void
.end method

.method public doOnContentChanged()V
    .locals 2

    .prologue
    .line 875
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "doOnContentChanged"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method protected newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 822
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->newContactView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 824
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;)V

    .line 825
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;
    const v2, 0x7f0e00bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->name:Landroid/widget/TextView;

    .line 826
    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->photo:Landroid/widget/QuickContactBadge;

    .line 827
    const v2, 0x7f0e00db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->status:Landroid/widget/TextView;

    .line 828
    const v2, 0x7f0e0172

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 829
    const v2, 0x7f0e0171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$ViewHolder;->statusLayout:Landroid/widget/LinearLayout;

    .line 830
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 831
    return-object v1
.end method
