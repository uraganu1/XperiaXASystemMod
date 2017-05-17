.class public Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;
.super Landroid/app/DialogFragment;
.source "ResultDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;,
        Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemCache;,
        Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;
    }
.end annotation


# static fields
.field private static final ARG_CALL_BACK:Ljava/lang/String; = "call_back"

.field public static final ARG_RESULT_LIST:Ljava/lang/String; = "result_list"

.field private static final ARG_RESULT_MODE:Ljava/lang/String; = "result_mode"

.field private static final CHAR_ARRAY_BUFFER_SIZE:I = 0x80

.field public static final MODE_DELETE_FAILURE:I = 0x2

.field public static final MODE_RESULT_SUCCESS:I = 0x0

.field public static final MODE_RESULT_UNSUCCESS:I = 0x1

.field public static final MODE_SHARE_ENCODE_FAILURE:I = 0x3

.field private static final RESULTS_PROJECTION:[Ljava/lang/String;

.field private static final SUMMARY_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field private static final SUMMARY_NAME_ALT_COLUMN_INDEX:I = 0x2

.field private static final SUMMARY_NAME_COLUMN_INDEX:I = 0x1

.field private static final SUMMARY_PHOTO_ID_COLUMN_INDEX:I = 0x3

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;

.field private mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

.field private mDescriptionView:Landroid/widget/TextView;

.field public mDisplayOrder:Z

.field private mList:Landroid/widget/ListView;

.field private mMatrixCursor:Landroid/database/MatrixCursor;

.field private mResultList:Ljava/util/ArrayList;
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
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 71
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->RESULTS_PROJECTION:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private putInMatrixCursor(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    if-eqz p1, :cond_1

    .line 277
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mMatrixCursor:Landroid/database/MatrixCursor;

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->close()V

    .line 280
    :cond_0
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->RESULTS_PROJECTION:[Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 281
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;

    .line 282
    .local v0, "item":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    .line 283
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 284
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 285
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->getDisplayNameAlt()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 286
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;->getPhotoId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 288
    .local v2, "row":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    .end local v0    # "item":Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    .end local v2    # "row":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;ILjava/util/ArrayList;Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "resultMode"    # I
    .param p3, "callBack"    # Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;",
            ">;",
            "Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    :cond_0
    return-void

    .line 111
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;-><init>()V

    .line 112
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "result_mode"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string/jumbo v3, "result_list"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    const-string/jumbo v3, "call_back"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 118
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 119
    .local v2, "ft":Landroid/app/FragmentTransaction;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 120
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 106
    return-void
.end method


# virtual methods
.method getList()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 126
    const v9, 0x7f04000b

    .line 125
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 128
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    move-result-object v1

    .line 129
    .local v1, "contactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDisplayOrder()I

    move-result v8

    if-ne v8, v7, :cond_0

    move v6, v7

    :cond_0
    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mDisplayOrder:Z

    .line 132
    const v6, 0x7f0e0044

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mList:Landroid/widget/ListView;

    .line 133
    const v6, 0x7f0e0040

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mDescriptionView:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "result_list"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mResultList:Ljava/util/ArrayList;

    .line 136
    const-string/jumbo v6, "call_back"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    .line 137
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mResultList:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->putInMatrixCursor(Ljava/util/ArrayList;)V

    .line 138
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mMatrixCursor:Landroid/database/MatrixCursor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v6}, Landroid/database/MatrixCursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 139
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 140
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mMatrixCursor:Landroid/database/MatrixCursor;

    const v10, 0x7f04000c

    .line 139
    invoke-direct {v6, p0, v8, v10, v9}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;

    .line 142
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mList:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultItemListAdapter;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    const-string/jumbo v6, "result_mode"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 144
    .local v3, "resultMode":I
    const v4, 0x7f09028c

    .line 146
    .local v4, "titleId":I
    if-ne v3, v7, :cond_4

    .line 147
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mDescriptionView:Landroid/widget/TextView;

    .line 148
    const v8, 0x7f090289

    .line 147
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 164
    :cond_2
    :goto_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 167
    .local v2, "dialog":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    if-eqz v6, :cond_3

    .line 168
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getButtonMode()I

    move-result v6

    if-nez v6, :cond_8

    .line 169
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getPositiveResource()I

    move-result v6

    .line 170
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    .line 169
    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getNegativeResource()I

    move-result v6

    .line 172
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    .line 171
    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 149
    .end local v2    # "dialog":Landroid/app/AlertDialog$Builder;
    :cond_4
    if-nez v3, :cond_5

    .line 150
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mDescriptionView:Landroid/widget/TextView;

    const v8, 0x7f09025c

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 151
    const v4, 0x7f0901fc

    goto :goto_0

    .line 152
    :cond_5
    if-ne v3, v11, :cond_6

    .line 153
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mDescriptionView:Landroid/widget/TextView;

    const v8, 0x7f09025d

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 154
    :cond_6
    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    if-eqz v6, :cond_2

    .line 155
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getButtonMode()I

    move-result v6

    if-nez v6, :cond_7

    .line 156
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mDescriptionView:Landroid/widget/TextView;

    .line 157
    const v8, 0x7f09025e

    .line 156
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 159
    :cond_7
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mDescriptionView:Landroid/widget/TextView;

    .line 160
    const v8, 0x7f09025f

    .line 159
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 173
    .restart local v2    # "dialog":Landroid/app/AlertDialog$Builder;
    :cond_8
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getButtonMode()I

    move-result v6

    if-ne v6, v7, :cond_9

    .line 174
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getPositiveResource()I

    move-result v6

    .line 175
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    .line 174
    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 176
    :cond_9
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getButtonMode()I

    move-result v6

    if-ne v6, v11, :cond_3

    .line 177
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v6}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getNegativeResource()I

    move-result v6

    .line 178
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->mCallBack:Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;

    invoke-interface {v7}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    .line 177
    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 301
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 299
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 309
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 307
    return-void
.end method
