.class public Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;,
        Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;
    }
.end annotation


# static fields
.field private static final PHONE_NUMBER_SEPARATOR:Ljava/lang/String; = ": "


# instance fields
.field private mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mShouldShowIceBadge:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mContacts:Ljava/util/ArrayList;

    .line 145
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mContext:Landroid/content/Context;

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    const v1, 0x7f0b0005

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mShouldShowIceBadge:Z

    .line 143
    return-void
.end method

.method private createPhoneDataView(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;)Landroid/widget/LinearLayout;
    .locals 7
    .param p1, "phoneData"    # Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    .prologue
    .line 202
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 203
    const v5, 0x7f04009f

    const/4 v6, 0x0

    .line 202
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 206
    .local v3, "phoneViewContainer":Landroid/widget/LinearLayout;
    const v4, 0x7f0e019b

    .line 205
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    .local v0, "phoneNumber":Landroid/widget/TextView;
    const v4, 0x7f0e019a

    .line 208
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 211
    .local v1, "phoneNumberPrefix":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 212
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->getPhoneNumberType()I

    move-result v5

    invoke-static {v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v5

    .line 211
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "phoneTypeLabel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-object v3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 170
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    instance-of v1, p2, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 178
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;

    .line 179
    .local v0, "contactView":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->clearContainer()V

    .line 185
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;

    move-result-object v6

    .line 187
    .local v6, "contactData":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->getContactId()J

    move-result-wide v4

    .line 188
    .local v4, "contactId":J
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->getContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->setContactName(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->getPhotoId()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->setContactImage(Lcom/android/contacts/photomanager/ContactPhotoManager;JJ)V

    .line 190
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->disableContactImageClick()V

    .line 191
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mShouldShowIceBadge:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->setIceBadgeVisibility(Z)V

    .line 194
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->getPhoneNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "phoneData$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    .line 195
    .local v7, "phoneData":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->createPhoneDataView(Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;->addViewToContainer(Landroid/view/View;)V

    goto :goto_1

    .line 181
    .end local v0    # "contactView":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;
    .end local v4    # "contactId":J
    .end local v6    # "contactData":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;
    .end local v7    # "phoneData":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;
    .end local v8    # "phoneData$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 182
    const v2, 0x7f04009c

    const/4 v3, 0x0

    .line 181
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;

    .restart local v0    # "contactView":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenListItemView;
    goto :goto_0

    .line 198
    .restart local v4    # "contactId":J
    .restart local v6    # "contactData":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;
    .restart local v8    # "phoneData$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public setContacts(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;->notifyDataSetChanged()V

    .line 152
    return-void
.end method
