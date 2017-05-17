.class public Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;
.source "LinkContactsSuggestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$ContactItemCache;,
        Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_LINK_SUGGESTION:Ljava/lang/String; = "com.android.contacts.action.LINK_SUGGESTION"

.field private static final CHAR_ARRAY_BUFFER_SIZE:I = 0x80

.field private static final HEADER_CONTACT_ID:Ljava/lang/String; = "header_contact_id"

.field private static final LINKED_ITEMS_STATE:Ljava/lang/String; = "linkedState"

.field static final NEW_CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static final SUBTTILE:I = 0x0

.field private static final SUMMARY_HEADER_CONTACT_ID:I = 0x4

.field private static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field private static final SUMMARY_NAME_ALTERNATIVE_COLUMN_INDEX:I = 0x3

.field private static final SUMMARY_NAME_COLUMN_INDEX:I = 0x1

.field private static final SUMMARY_PHOTO_ID_COLUMN_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LinkContactsSuggestionActivity"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

.field private mDiscardButton:Landroid/widget/Button;

.field private mDisplayOrder:Z

.field private mDoneButton:Landroid/widget/Button;

.field private mLinkedSuggestionsIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMatrixCursor:Landroid/database/MatrixCursor;

.field private mSuggestionsIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsLengthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDisplayOrder:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsLengthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->updateButtonState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 89
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "header_contact_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 88
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->NEW_CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;-><init>()V

    .line 108
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mManagedDialogs:Ljava/util/List;

    .line 45
    return-void
.end method

.method private convertExtraToCursor()V
    .locals 20

    .prologue
    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 218
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v18, "suggestions_id_list"

    .line 217
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 220
    .local v15, "suggestionsIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v18, "suggestion_length_list"

    .line 219
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 222
    .local v16, "suggestionsLength":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v18, "linked_suggestions_list"

    .line 221
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 224
    .local v17, "suggestionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_2

    .line 225
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_2

    .line 226
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->close()V

    .line 232
    :cond_0
    new-instance v18, Landroid/database/MatrixCursor;

    sget-object v19, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->NEW_CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-direct/range {v18 .. v19}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 233
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v14, v19

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput-object v18, v14, v19

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x2

    aput-object v18, v14, v19

    const/16 v18, 0x0

    const/16 v19, 0x3

    aput-object v18, v14, v19

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x4

    aput-object v18, v14, v19

    .line 234
    .local v14, "row":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 236
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 237
    .local v13, "lengthSize":I
    const/4 v4, 0x0

    .line 238
    .local v4, "currentIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v13, :cond_2

    .line 239
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    .line 240
    .local v5, "headerItem":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->getContactId()J

    move-result-wide v6

    .line 241
    .local v6, "headerId":J
    const-wide/16 v18, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v5, v1, v2}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->putInMatrixCursor(Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;J)V

    .line 242
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 243
    .local v12, "length":I
    add-int/lit8 v11, v4, 0x1

    .local v11, "j":I
    :goto_1
    add-int v18, v12, v4

    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 244
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    .line 245
    .local v10, "item":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6, v7}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->putInMatrixCursor(Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;J)V

    .line 243
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 247
    .end local v10    # "item":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    :cond_1
    add-int/2addr v4, v12

    .line 238
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 250
    .end local v4    # "currentIndex":I
    .end local v5    # "headerItem":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    .end local v6    # "headerId":J
    .end local v8    # "i":I
    .end local v11    # "j":I
    .end local v12    # "length":I
    .end local v13    # "lengthSize":I
    .end local v14    # "row":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->getCount()I

    move-result v18

    if-lez v18, :cond_3

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v18

    check-cast v18, Landroid/widget/CursorAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 215
    :cond_3
    return-void
.end method

.method private putInMatrixCursor(Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;J)V
    .locals 4
    .param p1, "item"    # Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    .param p2, "headerId"    # J

    .prologue
    .line 256
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    .line 257
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->getPhotoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 258
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->getDisplayNameAlt()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 260
    .local v0, "row":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method private updateButtonState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 580
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 639
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->finish()V

    .line 621
    return-void

    .line 624
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->setResult(I)V

    goto :goto_0

    .line 627
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 628
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "suggestions_id_list"

    .line 629
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsIdList:Ljava/util/ArrayList;

    .line 628
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 630
    const-string/jumbo v1, "suggestion_length_list"

    .line 631
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsLengthList:Ljava/util/ArrayList;

    .line 630
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 632
    const-string/jumbo v1, "linked_suggestions_id_list"

    .line 633
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    .line 632
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 634
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x7f0e01cb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 671
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 670
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f090285

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 119
    const-string/jumbo v6, "LinkContactsSuggestionActivity"

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 127
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "suggestions_id_list"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsIdList:Ljava/util/ArrayList;

    .line 129
    const-string/jumbo v6, "suggestion_length_list"

    .line 128
    invoke-virtual {v3, v6}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsLengthList:Ljava/util/ArrayList;

    .line 131
    const-string/jumbo v6, "linked_suggestions_list"

    .line 130
    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsList:Ljava/util/ArrayList;

    .line 132
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsIdList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsIdList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 135
    :cond_1
    const-string/jumbo v6, "LinkContactsSuggestionActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Intent "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " is missing required extra: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 136
    const-string/jumbo v9, "suggestions_id_list"

    .line 135
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 136
    const-string/jumbo v9, " or "

    .line 135
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 137
    const-string/jumbo v9, "suggestion_length_list"

    .line 135
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->setResult(I)V

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->finish()V

    .line 140
    return-void

    .line 133
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsLengthList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsLengthList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 134
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 142
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    .line 144
    const v6, 0x7f0400b2

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->setContentView(I)V

    .line 145
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    .line 147
    .local v4, "isUsingTwoPanes":Z
    if-nez v4, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mActionBar:Landroid/app/ActionBar;

    .line 149
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setTitle(I)V

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 156
    .local v5, "list":Landroid/widget/ListView;
    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 157
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 158
    const v6, 0x7f0e00b3

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, "buttonPanel":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 161
    const v6, 0x7f0e01cb

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDiscardButton:Landroid/widget/Button;

    .line 162
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDiscardButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    const v6, 0x7f0e01cc

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDoneButton:Landroid/widget/Button;

    .line 165
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->updateButtonState()V

    .line 168
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;Landroid/content/Context;)V

    .line 169
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    move-result-object v2

    .line 172
    .local v2, "contactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDisplayOrder()I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mDisplayOrder:Z

    .line 174
    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 175
    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 176
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    .line 177
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    new-instance v7, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$1;

    invoke-direct {v7, p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->refresh(Ljava/lang/Runnable;Z)V

    .line 118
    return-void

    .line 151
    .end local v0    # "adapter":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;
    .end local v1    # "buttonPanel":Landroid/view/View;
    .end local v2    # "contactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    .end local v5    # "list":Landroid/widget/ListView;
    :cond_3
    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->setTitle(I)V

    goto :goto_0

    .restart local v0    # "adapter":Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity$SuggestionItemListAdapter;
    .restart local v1    # "buttonPanel":Landroid/view/View;
    .restart local v2    # "contactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    .restart local v5    # "list":Landroid/widget/ListView;
    :cond_4
    move v6, v8

    .line 172
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 595
    const-string/jumbo v3, "LinkContactsSuggestionActivity"

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 596
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsIdList:Ljava/util/ArrayList;

    .line 597
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsLengthList:Ljava/util/ArrayList;

    .line 598
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    .line 599
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mSuggestionsList:Ljava/util/ArrayList;

    .line 601
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    if-eqz v3, :cond_0

    .line 602
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->stopObservering()V

    .line 603
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->destroy()V

    .line 604
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    .line 607
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onDestroy()V

    .line 609
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mManagedDialogs:Ljava/util/List;

    monitor-enter v4

    .line 610
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mManagedDialogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "wDialog$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 611
    .local v1, "wDialog":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 612
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 609
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "wDialog":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    .end local v2    # "wDialog$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "wDialog$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    .line 617
    const-string/jumbo v3, "LinkContactsSuggestionActivity"

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 207
    const-string/jumbo v0, "LinkContactsSuggestionActivity"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 208
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onPause()V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->pause()V

    .line 206
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 663
    const-string/jumbo v0, "linkedState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    .line 664
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    .line 662
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 195
    const-string/jumbo v0, "LinkContactsSuggestionActivity"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 196
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->resume()V

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 202
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->convertExtraToCursor()V

    .line 194
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 651
    const-string/jumbo v0, "linkedState"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->mLinkedSuggestionsIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 649
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onStart()V

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/LinkContactsSuggestionActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    .line 190
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->refreshContactPhotos()V

    .line 185
    return-void
.end method
