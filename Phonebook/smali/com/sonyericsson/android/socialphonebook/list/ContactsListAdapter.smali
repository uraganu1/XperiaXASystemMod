.class public abstract Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
.super Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;
.source "ContactsListAdapter.java"


# instance fields
.field private mDirectorySearchMode:I

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected final mProfileNameText:Ljava/lang/CharSequence;

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field protected final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    const v0, 0x7f090202

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 67
    const v0, 0x7f0901f0

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mProfileNameText:Ljava/lang/CharSequence;

    .line 59
    return-void
.end method


# virtual methods
.method protected bindDisplayName(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;I)V

    .line 162
    return-void
.end method

.method protected bindDisplayName(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;Z)V
    .locals 2
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isProfile"    # Z

    .prologue
    .line 167
    if-eqz p3, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mProfileNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->bindDisplayName(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 121
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v7

    .line 122
    .local v7, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v9, v7, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-nez v9, :cond_0

    .line 123
    return-void

    :cond_0
    move-object v5, v7

    .line 126
    check-cast v5, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .line 127
    .local v5, "directoryPartition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .local v2, "directoryId":J
    move-object v8, p1

    .line 129
    check-cast v8, Landroid/widget/TextView;

    .line 130
    .local v8, "textView":Landroid/widget/TextView;
    const-string/jumbo v6, ""

    .line 131
    .local v6, "displayName":Ljava/lang/String;
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-eqz v9, :cond_1

    const-wide/16 v10, 0x1

    cmp-long v9, v2, v10

    if-nez v9, :cond_2

    .line 140
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->isLoading()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090249

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "content":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .line 134
    .end local v0    # "content":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "directoryName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v6, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 143
    .end local v4    # "directoryName":Ljava/lang/String;
    :cond_4
    if-nez p3, :cond_5

    const/4 v1, 0x0

    .line 144
    .local v1, "count":I
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-eqz v9, :cond_6

    const-wide/16 v10, 0x1

    cmp-long v9, v2, v10

    if-eqz v9, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getDirectoryResultLimit()I

    move-result v9

    if-lt v1, v9, :cond_6

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 147
    const/4 v11, 0x1

    aput-object v6, v10, v11

    .line 146
    const v11, 0x7f09024a

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1

    .line 143
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "count":I
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .restart local v1    # "count":I
    goto :goto_2

    .line 149
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const v11, 0x7f0f0005

    .line 149
    invoke-virtual {v9, v11, v1, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1
.end method

.method protected bindPhoto(Landroid/widget/QuickContactBadge;JJ)V
    .locals 8
    .param p1, "aView"    # Landroid/widget/QuickContactBadge;
    .param p2, "aPhotoId"    # J
    .param p4, "contactId"    # J

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 222
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 221
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 220
    return-void
.end method

.method protected bindPhoto(Landroid/widget/QuickContactBadge;JLandroid/net/Uri;)V
    .locals 6
    .param p1, "aView"    # Landroid/widget/QuickContactBadge;
    .param p2, "aPhotoId"    # J
    .param p4, "lookupKey"    # Landroid/net/Uri;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 235
    sget-object v5, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 234
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JLandroid/net/Uri;Lcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 233
    return-void
.end method

.method protected bindPhoto(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x4

    .line 196
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 197
    .local v4, "contactId":J
    const-wide/16 v2, 0x0

    .line 198
    .local v2, "photoId":J
    int-to-long v0, p2

    cmp-long v0, v0, v8

    if-nez v0, :cond_1

    .line 199
    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->isSimAccountContact(J)Z

    move-result v0

    .line 198
    if-eqz v0, :cond_1

    .line 200
    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->getSimAccountType(J)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "accountType":Ljava/lang/String;
    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAdnPhotoId(Ljava/lang/String;)J

    move-result-wide v2

    .line 205
    .end local v6    # "accountType":Ljava/lang/String;
    :cond_0
    :goto_0
    int-to-long v0, p2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getQuickContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->bindPhoto(Landroid/widget/QuickContactBadge;JLandroid/net/Uri;)V

    .line 195
    :goto_1
    return-void

    .line 202
    :cond_1
    invoke-interface {p3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getQuickContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->bindPhoto(Landroid/widget/QuickContactBadge;JJ)V

    goto :goto_1
.end method

.method protected bindPresence(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 185
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->showPresence(Landroid/database/Cursor;I)V

    .line 184
    return-void
.end method

.method protected bindSnsStatus(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 175
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->showStatusMessage(Landroid/database/Cursor;II)V

    .line 174
    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 95
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 96
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    const/4 v2, 0x7

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setProfileExists(Z)V

    .line 91
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public configureDirectoryLoader(Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;)V
    .locals 1
    .param p1, "loader"    # Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;

    .prologue
    .line 77
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mDirectorySearchMode:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    .line 76
    return-void
.end method

.method protected configureSelection(Landroid/content/CursorLoader;J)V
    .locals 0
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "partitionId"    # J

    .prologue
    .line 73
    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;J)V
    .locals 0
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 70
    return-void
.end method

.method protected disableQuickContact(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;)V
    .locals 2
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getQuickContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 190
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getQuickContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 191
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getQuickContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v0

    .line 192
    const/4 v1, 0x2

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImportantForAccessibility(I)V

    .line 188
    return-void
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 240
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getContactId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 245
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 246
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    return-wide v2

    .line 248
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getContactPhotoId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 253
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getContactSimpleUri(I)Landroid/net/Uri;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 258
    .local v2, "item":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 259
    return-object v3

    .line 261
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 262
    .local v0, "contactId":J
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 266
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getCount()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 267
    :cond_0
    return-object v2

    .line 269
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 270
    .local v1, "partitionIndex":I
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 271
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 275
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 276
    .local v0, "contactId":J
    const/4 v6, 0x6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 279
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 283
    .local v5, "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 284
    .local v2, "directoryId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 285
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 287
    const-string/jumbo v7, "directory"

    .line 288
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 285
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 290
    :cond_0
    return-object v5

    .line 281
    .end local v2    # "directoryId":J
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .restart local v5    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mDirectorySearchMode:I

    return v0
.end method

.method public getFirstContactUri()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartitionCount()I

    move-result v3

    .line 377
    .local v3, "partitionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 378
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .line 379
    .local v2, "partition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 377
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 384
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 388
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 395
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "partition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    :cond_2
    return-object v5
.end method

.method protected getProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    .line 83
    .local v0, "sortOrder":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object v1

    .line 86
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/list/ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-object v1
.end method

.method public getSelectedContactDirectoryId()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactDirectoryId:J

    return-wide v0
.end method

.method public getSelectedContactId()J
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactId:J

    return-wide v0
.end method

.method public getSelectedContactLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedContactPosition()I
    .locals 14

    .prologue
    .line 322
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-nez v10, :cond_0

    iget-wide v10, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 323
    const/4 v10, -0x1

    return v10

    .line 326
    :cond_0
    const/4 v2, 0x0

    .line 327
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 328
    .local v8, "partitionIndex":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartitionCount()I

    move-result v7

    .line 329
    .local v7, "partitionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_1

    .line 330
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .line 331
    .local v6, "partition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactDirectoryId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 332
    move v8, v3

    .line 336
    .end local v6    # "partition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    :cond_1
    const/4 v10, -0x1

    if-ne v8, v10, :cond_3

    .line 337
    const/4 v10, -0x1

    return v10

    .line 329
    .restart local v6    # "partition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    .end local v6    # "partition":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    .line 341
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_4

    .line 342
    const/4 v10, -0x1

    return v10

    .line 345
    :cond_4
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 346
    const/4 v5, -0x1

    .line 347
    .local v5, "offset":I
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 348
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 349
    const/4 v10, 0x6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "lookupKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 351
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 364
    .end local v4    # "lookupKey":Ljava/lang/String;
    :cond_6
    :goto_1
    const/4 v10, -0x1

    if-ne v5, v10, :cond_9

    .line 365
    const/4 v10, -0x1

    return v10

    .line 355
    :cond_7
    iget-wide v10, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    iget-wide v10, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    .line 356
    iget-wide v10, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 357
    :cond_8
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 358
    .local v0, "contactId":J
    iget-wide v10, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactId:J

    cmp-long v10, v0, v10

    if-nez v10, :cond_5

    .line 359
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    goto :goto_1

    .line 368
    .end local v0    # "contactId":J
    :cond_9
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPositionForPartition(I)I

    move-result v10

    add-int v9, v10, v5

    .line 369
    .local v9, "position":I
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->hasHeader(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 370
    add-int/lit8 v9, v9, 0x1

    .line 372
    :cond_a
    return v9
.end method

.method public isSelectedContact(ILandroid/database/Cursor;)Z
    .locals 10
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 399
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 400
    .local v0, "directoryId":J
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getSelectedContactDirectoryId()J

    move-result-wide v6

    cmp-long v3, v6, v0

    if-eqz v3, :cond_0

    .line 401
    return v5

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "lookupKey":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 405
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    return v4

    .line 409
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_3

    const-wide/16 v6, 0x1

    cmp-long v3, v0, v6

    if-eqz v3, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getSelectedContactId()J

    move-result-wide v6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    move v3, v4

    .line 409
    :goto_0
    return v3

    :cond_2
    move v3, v5

    .line 410
    goto :goto_0

    :cond_3
    move v3, v5

    .line 409
    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400af

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 114
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 116
    return-object v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "view":Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 107
    return-object v0
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mDirectorySearchMode:I

    .line 299
    return-void
.end method

.method public setSelectedContact(JLjava/lang/String;J)V
    .locals 0
    .param p1, "selectedDirectoryId"    # J
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "contactId"    # J

    .prologue
    .line 316
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactDirectoryId:J

    .line 317
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 318
    iput-wide p4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->mSelectedContactId:J

    .line 315
    return-void
.end method
