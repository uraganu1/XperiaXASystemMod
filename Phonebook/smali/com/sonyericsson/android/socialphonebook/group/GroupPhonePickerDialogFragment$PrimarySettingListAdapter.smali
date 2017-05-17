.class Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupPhonePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimarySettingListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutInflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mContext:Landroid/content/Context;

    .line 237
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 240
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter$1;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->insertLabelToListItems()V

    .line 234
    return-void
.end method

.method private insertLabelToListItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 254
    const-wide/16 v2, -0x1

    .line 255
    .local v2, "previousItemRawId":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v4, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;>;"
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    .line 257
    .local v0, "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    if-eqz v5, :cond_0

    .line 258
    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    iget-wide v6, v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mRawContactId:J

    cmp-long v5, v6, v2

    if-eqz v5, :cond_1

    .line 259
    iget-object v5, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    iget-wide v2, v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mRawContactId:J

    .line 260
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    const/4 v6, 0x4

    invoke-direct {v5, v8, v6}, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;-><init>(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    .end local v0    # "listItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    :cond_2
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    .line 253
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 341
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListItems()Ljava/util/ArrayList;
    .locals 1
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
    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v9, 0x7f0e01dc

    const/4 v6, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 291
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    iget-object v0, v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    .line 292
    .local v0, "dataItem":Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    iget v1, v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    .line 294
    .local v1, "itemType":I
    if-nez v0, :cond_0

    if-eq v1, v6, :cond_0

    .line 295
    return-object v7

    .line 298
    :cond_0
    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    .line 299
    if-ne v1, v6, :cond_2

    .line 300
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040091

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 303
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    iget-object v5, v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    iget-object v2, v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mContactName:Ljava/lang/String;

    .line 304
    .local v2, "labelString":Ljava/lang/CharSequence;
    const v5, 0x7f0e0182

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .end local v2    # "labelString":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object p2

    .line 308
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400b8

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 311
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mType:I

    iget-object v7, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mLabel:Ljava/lang/String;

    .line 310
    invoke-static {v5, v6, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 312
    .local v4, "phoneType":Ljava/lang/CharSequence;
    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mPrimaryData:Ljava/lang/String;

    .line 314
    .local v3, "phoneNumber":Ljava/lang/CharSequence;
    const v5, 0x7f0e01de

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const v5, 0x7f0e01dd

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    iget-boolean v5, v5, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mShowPrimary:Z

    if-eqz v5, :cond_3

    .line 318
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 319
    const/4 v6, 0x1

    .line 318
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 271
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    iget v0, v1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItemType:I

    .line 272
    .local v0, "itemType":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 273
    const/4 v1, 0x0

    return v1

    .line 275
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
