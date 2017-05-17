.class public Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;
.super Landroid/widget/BaseAdapter;
.source "IceContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;
    }
.end annotation


# instance fields
.field private mCheckedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIceContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;",
            ">;"
        }
    .end annotation
.end field

.field private mIcePrefix:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMode:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mShouldShowIceBadge:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mCheckedItems:Ljava/util/HashSet;

    .line 37
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;->FullView:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mIceContacts:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mIcePrefix:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    const v1, 0x7f0b0005

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mShouldShowIceBadge:Z

    .line 42
    return-void
.end method


# virtual methods
.method public getCheckedItems()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mCheckedItems:Ljava/util/HashSet;

    return-object v0
.end method

.method public getCheckedItemsUri()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;->CheckableContacts:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    if-eq v3, v4, :cond_0

    .line 142
    return-object v0

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mIceContacts:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    .line 145
    .local v1, "info":Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v1    # "info":Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    :cond_2
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mIceContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mIceContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mIceContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    move-result-object v6

    .line 83
    .local v6, "contactInfo":Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 86
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;

    .line 89
    .local v0, "contact":Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mIcePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->setContactName(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getPhotoId()J

    move-result-wide v2

    .line 91
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactId()J

    move-result-wide v4

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->setContactImage(Lcom/android/contacts/photomanager/ContactPhotoManager;JJ)V

    .line 92
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mShouldShowIceBadge:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->setIceBadgeVisibility(Z)V

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;->CheckableContacts:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    if-ne v1, v2, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->showCheckbox()V

    .line 98
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->disableContactImageClick()V

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->setChecked(Z)V

    .line 104
    :goto_1
    return-object v0

    .line 84
    .end local v0    # "contact":Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040099

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;

    .restart local v0    # "contact":Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceListItemView;->getContactImage()Landroid/widget/QuickContactBadge;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public setCheckedItems(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "checkedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;->CheckableContacts:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    if-eq v0, v1, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public setClicked(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 162
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;->CheckableContacts:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    if-eq v3, v4, :cond_0

    .line 163
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    move-result-object v2

    .line 168
    .local v2, "item":Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactId()J

    move-result-wide v0

    .line 169
    .local v0, "contactId":J
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 175
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->notifyDataSetChanged()V

    .line 160
    return-void

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setIceContacts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "iceContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mIceContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mIceContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public setMode(Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mMode:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;->CheckableContacts:Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter$AdapterMode;

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsAdapter;->mCheckedItems:Ljava/util/HashSet;

    .line 55
    :cond_0
    return-void
.end method
