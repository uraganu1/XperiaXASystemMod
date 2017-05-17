.class public Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;
.super Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
.source "ContactListItemAdapter.java"


# static fields
.field private static final CLAUSE_CONTACTED_CONTACTS:Ljava/lang/String; = "times_contacted > 0"

.field private static final CLAUSE_ONLINE_CONTACTS:Ljava/lang/String; = "NOT contact_presence=0"

.field private static final CLAUSE_ONLY_PHONES:Ljava/lang/String; = "has_phone_number=1"

.field private static final CLAUSE_STARRED_CONTACTS:Ljava/lang/String; = "starred = 1"


# instance fields
.field private final mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

.field private mDisplayOnlyOnlineContacts:Z

.field private mDisplayOnlyPhones:Z

.field private mGroupName:Ljava/lang/String;

.field private mMarkMode:Z

.field private mMode:I

.field private mShowRcsData:Z

.field private mSyncCallStatusLoadInterface:Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "contactDataHelper"    # Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mMarkMode:Z

    .line 69
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    .line 67
    return-void
.end method


# virtual methods
.method protected bindPresence(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 155
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 156
    .local v0, "contactId":J
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->isRcsCapable(I)Z

    move-result v2

    .line 157
    .local v2, "isRcsContact":Z
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mShowRcsData:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getPresenceImageView()Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020079

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getPresenceImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->bindPresence(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    move-object v2, p1

    .line 111
    check-cast v2, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;

    .line 112
    .local v2, "itemView":Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;
    invoke-virtual {p0, p4}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getItemPlacementInSection(I)Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;

    move-result-object v3

    .line 113
    .local v3, "placement":Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;
    iget-boolean v4, v3, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->firstInSection:Z

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, v3, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 117
    iget-object v6, v3, Lcom/sonyericsson/android/socialphonebook/list/IndexableListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 116
    const v6, 0x7f0901a5

    .line 115
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getUpperCaseQueryString()[C

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 125
    if-nez p4, :cond_4

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->hasProfile()Z

    move-result v1

    .line 126
    :goto_2
    invoke-virtual {p0, v2, p3, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->bindDisplayName(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;Z)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->disableQuickContact(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;)V

    .line 130
    invoke-virtual {p0, v2, p2, p3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->bindPhoto(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 132
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mSyncCallStatusLoadInterface:Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;

    if-eqz v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mSyncCallStatusLoadInterface:Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getSyncCallImageView()Landroid/widget/ImageView;

    move-result-object v5

    .line 134
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getQuickContactBadge()Landroid/widget/QuickContactBadge;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 133
    invoke-interface {v4, v5, v6, v8, v9}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;->setSyncCallStatus(Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;J)V

    .line 136
    :cond_0
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getCheckView()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 137
    .local v0, "checkedView":Landroid/widget/CheckedTextView;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->isMarkMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 138
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 139
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getSnsImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getPresenceImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    :goto_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->isSelectionVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setActivated(Z)V

    .line 110
    :cond_1
    return-void

    .line 119
    .end local v0    # "checkedView":Landroid/widget/CheckedTextView;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 125
    :cond_4
    const/4 v1, 0x0

    .local v1, "isProfile":Z
    goto :goto_2

    .line 143
    .end local v1    # "isProfile":Z
    .restart local v0    # "checkedView":Landroid/widget/CheckedTextView;
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 144
    invoke-virtual {p0, v2, p3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->bindSnsStatus(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 145
    invoke-virtual {p0, v2, p3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->bindPresence(Lcom/sonyericsson/android/socialphonebook/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 10
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 167
    instance-of v3, p1, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 168
    check-cast v3, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->shouldIncludeProfile()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "query":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 174
    const-string/jumbo v1, ""

    .line 176
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 182
    const-string/jumbo v3, "0"

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 206
    .end local v1    # "query":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->configureSelection(Landroid/content/CursorLoader;J)V

    .line 209
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getSortOrder()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 210
    const-string/jumbo v2, "sort_key"

    .line 214
    .local v2, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 166
    return-void

    .line 184
    .end local v2    # "sortOrder":Ljava/lang/String;
    .restart local v1    # "query":Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 185
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    const-string/jumbo v3, "directory"

    .line 187
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    cmp-long v3, p2, v8

    if-eqz v3, :cond_4

    const-wide/16 v4, 0x1

    cmp-long v3, p2, v4

    if-eqz v3, :cond_4

    .line 189
    const-string/jumbo v3, "limit"

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getDirectoryResultLimit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 192
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "query":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->configureUri(Landroid/content/CursorLoader;J)V

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 199
    instance-of v3, p1, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;

    if-eqz v3, :cond_2

    .line 200
    cmp-long v3, p2, v8

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 201
    check-cast v3, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/socialphonebook/list/SorterLoader;->setHeaderOn(Z)V

    goto :goto_0

    .line 212
    :cond_6
    const-string/jumbo v2, "sort_key_alt"

    .restart local v2    # "sortOrder":Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureSelection(Landroid/content/CursorLoader;J)V
    .locals 4
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "partitionId"    # J

    .prologue
    .line 247
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-nez v1, :cond_1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 277
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 246
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 254
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :sswitch_0
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mDisplayOnlyPhones:Z

    if-eqz v1, :cond_2

    .line 256
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string/jumbo v1, "has_phone_number=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mDisplayOnlyOnlineContacts:Z

    if-eqz v1, :cond_0

    .line 260
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v1, "NOT contact_presence=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 265
    :sswitch_1
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string/jumbo v1, "starred = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    :sswitch_2
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string/jumbo v1, "times_contacted > 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xf -> :sswitch_0
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
        0x28 -> :sswitch_2
    .end sparse-switch
.end method

.method protected configureUri(Landroid/content/CursorLoader;J)V
    .locals 4
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 221
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 238
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t generate URI: Unsupported Mode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mMode:I

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    const-string/jumbo v3, ")."

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :sswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 242
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 218
    return-void

    .line 232
    .end local v0    # "uri":Landroid/net/Uri;
    :sswitch_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 235
    .end local v0    # "uri":Landroid/net/Uri;
    :sswitch_2
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mGroupName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 221
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xf -> :sswitch_0
        0x14 -> :sswitch_2
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_1
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
    .end sparse-switch
.end method

.method public isMarkMode()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mMarkMode:Z

    return v0
.end method

.method public setDisplayOnlyOnlineContacts(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mDisplayOnlyOnlineContacts:Z

    .line 88
    return-void
.end method

.method public setDisplayOnlyPhones(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mDisplayOnlyPhones:Z

    .line 84
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mGroupName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setMarkMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mMarkMode:Z

    .line 92
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mMode:I

    .line 76
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setSearchMode(Z)V

    .line 101
    return-void
.end method

.method public setShowRcsData(Z)V
    .locals 0
    .param p1, "showRcsData"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mShowRcsData:Z

    .line 72
    return-void
.end method

.method public setSyncCallStatusLoaderInterface(Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;)V
    .locals 0
    .param p1, "loaderInterface"    # Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->mSyncCallStatusLoadInterface:Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;

    .line 96
    return-void
.end method
