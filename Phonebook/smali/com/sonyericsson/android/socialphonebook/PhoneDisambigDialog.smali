.class public Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;
.super Ljava/lang/Object;
.source "PhoneDisambigDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhonesAdapter;,
        Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEdit:Z

.field private mMakePrimary:Z

.field private mPhoneItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonesAdapter:Landroid/widget/ListAdapter;

.field private mPhonesCursor:Landroid/database/Cursor;

.field private mSendSms:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phonesCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phonesCursor"    # Landroid/database/Cursor;
    .param p3, "sendSms"    # Z
    .param p4, "aEdit"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mMakePrimary:Z

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    .line 74
    iput-boolean p3, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mSendSms:Z

    .line 75
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhonesCursor:Landroid/database/Cursor;

    .line 77
    iput-boolean p4, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mEdit:Z

    .line 79
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->makePhoneItemsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    .line 80
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/Collapser;->collapseList(Ljava/util/List;)V

    .line 82
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhonesAdapter;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhonesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhonesAdapter:Landroid/widget/ListAdapter;

    .line 84
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v5, "layout_inflater"

    .line 84
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 87
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400d0

    const/4 v5, 0x0

    .line 86
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, "setPrimaryView":Landroid/view/View;
    const v4, 0x7f0e0180

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    if-eqz p3, :cond_0

    .line 93
    const v3, 0x7f0900b0

    .line 98
    .local v3, "title":I
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhonesAdapter:Landroid/widget/ListAdapter;

    .line 98
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mDialog:Landroid/app/AlertDialog;

    .line 103
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 72
    return-void

    .line 95
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "title":I
    :cond_0
    const v3, 0x7f0900af

    .restart local v3    # "title":I
    goto :goto_0
.end method

.method private makePhoneItemsList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "phonesCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v3, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;>;"
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 203
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    const-string/jumbo v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 204
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 207
    .local v0, "id":J
    const-string/jumbo v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 206
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "phone":Ljava/lang/String;
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;-><init>(Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v0    # "id":J
    .end local v2    # "phone":Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 155
    iput-boolean p2, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mMakePrimary:Z

    .line 154
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_3

    if-ltz p2, :cond_3

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;

    .line 125
    .local v11, "phoneItem":Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;
    iget-wide v6, v11, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->id:J

    .line 126
    .local v6, "id":J
    iget-object v10, v11, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 128
    .local v10, "phone":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mMakePrimary:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v12, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 130
    .local v12, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "is_super_primary"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 133
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 131
    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mSendSms:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 122
    .end local v6    # "id":J
    .end local v10    # "phone":Ljava/lang/String;
    .end local v11    # "phoneItem":Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;
    :goto_0
    return-void

    .line 138
    .restart local v6    # "id":J
    .restart local v10    # "phone":Ljava/lang/String;
    .restart local v11    # "phoneItem":Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mEdit:Z

    if-eqz v0, :cond_2

    .line 139
    const-string/jumbo v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, v10, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 140
    .local v9, "numberUri":Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.DIAL"

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "numberUri":Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0901cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0901d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v10, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 150
    .end local v6    # "id":J
    .end local v10    # "phone":Ljava/lang/String;
    .end local v11    # "phoneItem":Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog$PhoneItem;
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhonesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhonesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhonesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhonesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 115
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mPhonesCursor:Landroid/database/Cursor;

    .line 117
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 109
    return-void
.end method
