.class public Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;
.super Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;
.source "TopContactsRecyclerAdapter.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;",
        ">;",
        "Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;"
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_ID_ADD_TO_CONTACTS:I = 0x12d

.field private static final CONTEXT_MENU_ID_BASE:I = 0x12c

.field private static final CONTEXT_MENU_ID_PREPARE_CALL:I = 0x130

.field private static final CONTEXT_MENU_ID_SEND_MESSAGE:I = 0x12f

.field private static final CONTEXT_MENU_ID_VIEW_CONTACT:I = 0x12e

.field private static final HEADER_COUNT:I = 0x1

.field private static final HEADER_SHOWN_LIMIT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TOP_CONTACTS_NAME_MAX_LINES:I = 0x2

.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_ITEM:I = 0x1


# instance fields
.field private mBadgeSize:I

.field private mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

.field private mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

.field private mContext:Landroid/content/Context;

.field private mIsSmsCapable:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mShouldShowHeader:Z


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->calculateHeaderWidth()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const v1, 0x7f0d00f1

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mBadgeSize:I

    .line 95
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    .line 88
    return-void
.end method

.method private calculateHeaderWidth()I
    .locals 5

    .prologue
    .line 308
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 309
    const v4, 0x7f0d00f1

    .line 308
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 310
    .local v1, "topContactItemWidth":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 311
    const v4, 0x7f0d00f3

    .line 310
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 313
    .local v0, "marginWidth":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 314
    .local v2, "windowWidth":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->getCount()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->getCount()I

    move-result v4

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    sub-int v3, v2, v3

    return v3
.end method

.method private isHeaderShown()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mShouldShowHeader:Z

    return v0
.end method

.method private isPositionHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 296
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->isHeaderShown()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private shouldShowCallComposerForNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->getCachedCapability(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mShouldShowHeader:Z

    .line 201
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mShouldShowHeader:Z

    goto :goto_0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->isHeaderShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0

    .line 196
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/RecyclerCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->isHeaderShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->isPositionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 28
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 109
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;

    if-eqz v3, :cond_1

    move-object/from16 v13, p1

    .line 110
    check-cast v13, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;

    .line 111
    .local v13, "headerViewHolder":Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;
    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;->-wrap0(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v13, v3}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;->-wrap1(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;Z)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 116
    .end local v13    # "headerViewHolder":Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v11

    .line 117
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_2

    return-void

    .line 119
    :cond_2
    const-string/jumbo v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 120
    .local v16, "idPosition":I
    const-string/jumbo v3, "display_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 121
    .local v18, "namePosition":I
    const-string/jumbo v3, "number"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 122
    .local v24, "phoneNumberPosition":I
    const-string/jumbo v3, "photo_uri"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 123
    .local v25, "photoUriPosition":I
    const-string/jumbo v3, "number_label"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 124
    .local v20, "numberLabelPosition":I
    const-string/jumbo v3, "number_type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 125
    .local v22, "numberTypePosition":I
    const-string/jumbo v3, "contact_uri"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 127
    .local v10, "contactUriPosition":I
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 129
    .local v14, "id":J
    move/from16 v0, v24

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 130
    .local v23, "phoneNumber":Ljava/lang/String;
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "contactUri":Ljava/lang/String;
    const-wide/16 v6, -0x1

    .line 132
    .local v6, "contactId":J
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 133
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 136
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 135
    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "formattedPhoneNumber":Ljava/lang/String;
    move-object/from16 v26, p1

    .line 138
    check-cast v26, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;

    .line 139
    .local v26, "topContactsViewHolder":Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;
    move/from16 v0, p2

    move-object/from16 v1, v26

    iput v0, v1, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mPosition:I

    .line 140
    const-wide/16 v8, 0x0

    cmp-long v3, v14, v8

    if-gez v3, :cond_5

    .line 141
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-static/range {v23 .. v23}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumberForAccessibility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mNameTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 145
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mPhoneNumberLabelTextView:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mPhoneNumberLabelTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :goto_1
    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 164
    .local v27, "uriString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 165
    .local v5, "imageUri":Landroid/net/Uri;
    if-eqz v27, :cond_4

    .line 166
    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 168
    .end local v5    # "imageUri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mContactPhoto:Landroid/widget/ImageView;

    .line 169
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mBadgeSize:I

    sget-object v9, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 168
    invoke-virtual/range {v3 .. v9}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;JILcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 108
    return-void

    .line 148
    .end local v27    # "uriString":Ljava/lang/String;
    :cond_5
    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 149
    .local v19, "numberLabel":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 150
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 152
    .local v21, "numberType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 151
    move/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    .end local v19    # "numberLabel":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 155
    .end local v21    # "numberType":I
    .restart local v19    # "numberLabel":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 156
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mNameTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 158
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mNameTextView:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 159
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mPhoneNumberLabelTextView:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;->mPhoneNumberLabelTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 212
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    const-string/jumbo v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 217
    .local v8, "phoneNumberPosition":I
    const-string/jumbo v0, "contact_uri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 219
    .local v9, "uriPosition":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "number":Ljava/lang/String;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 222
    .local v10, "uriString":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0901dc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    .line 222
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 226
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v7, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 211
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;I)V
    .locals 15
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;
    .param p4, "position"    # I

    .prologue
    .line 234
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    if-nez v11, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v2

    .line 238
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 239
    return-void

    .line 242
    :cond_1
    const-string/jumbo v11, "number"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 243
    .local v8, "numberPosition":I
    const-string/jumbo v11, "display_name"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 244
    .local v6, "namePosition":I
    const-string/jumbo v11, "contact_uri"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 246
    .local v9, "uriPosition":I
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "number":Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 250
    .local v10, "uriString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 251
    .local v1, "contactUri":Landroid/net/Uri;
    if-eqz v10, :cond_2

    .line 252
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 255
    .end local v1    # "contactUri":Landroid/net/Uri;
    :cond_2
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 257
    if-eqz v1, :cond_7

    .line 258
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v5}, Lcom/android/contacts/detail/ContactDisplayUtils;->getProperlyFormatedNameText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 265
    :goto_0
    if-nez v1, :cond_3

    .line 266
    invoke-static {v7, v5}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getAddToContactsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 267
    .local v4, "intent":Landroid/content/Intent;
    const/4 v11, 0x0

    const/16 v12, 0x12d

    const/4 v13, 0x0

    .line 268
    const v14, 0x7f09035b

    .line 267
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 271
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->shouldShowCallComposerForNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 272
    const/4 v11, 0x0

    const/16 v12, 0x130

    const/4 v13, 0x0

    const v14, 0x7f090398

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    .line 273
    sget-object v12, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->TAG:Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/sonymobile/holla/CallPlusIntents;->getCallComposerIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 272
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 276
    :cond_4
    iget-boolean v11, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mIsSmsCapable:Z

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isSmsAllowed(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 277
    const/4 v11, 0x0

    const/16 v12, 0x12f

    const/4 v13, 0x0

    .line 278
    const v14, 0x7f090359

    .line 277
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    .line 279
    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSendMessageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 277
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 282
    :cond_5
    if-eqz v1, :cond_6

    .line 283
    const/4 v11, 0x0

    const/16 v12, 0x12e

    const/4 v13, 0x0

    .line 284
    const v14, 0x7f09035a

    .line 283
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    .line 285
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.VIEW"

    invoke-direct {v12, v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 283
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 233
    :cond_6
    return-void

    .line 261
    :cond_7
    iget-object v11, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 260
    invoke-static {v11, v7}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 262
    .local v3, "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 174
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400e0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;

    invoke-direct {v1, v0, p0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder;-><init>(Landroid/view/View;Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsViewHolder$TopContactsViewHolderActionListener;)V

    return-object v1

    .line 178
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400df

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 179
    .restart local v0    # "v":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter$HeaderViewHolder;-><init>(Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setCallPlusConnector(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V
    .locals 0
    .param p1, "callPlusConnector"    # Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 336
    return-void
.end method

.method public setIsSmsCapable(Z)V
    .locals 0
    .param p1, "isSmsCapable"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsRecyclerAdapter;->mIsSmsCapable:Z

    .line 290
    return-void
.end method
