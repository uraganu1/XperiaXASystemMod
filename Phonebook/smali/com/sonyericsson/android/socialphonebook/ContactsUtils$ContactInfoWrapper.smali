.class public Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfoWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contactId:J

.field public email:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photo:[B

.field public rawContactId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 962
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper$1;-><init>()V

    .line 961
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 849
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;J)Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactId"    # J

    .prologue
    .line 907
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 909
    .local v4, "resolver":Landroid/content/ContentResolver;
    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v12

    .line 910
    .local v12, "contactId":J
    new-instance v19, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    invoke-direct/range {v19 .. v19}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;-><init>()V

    .line 911
    .local v19, "wrapper":Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    move-wide/from16 v0, p1

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->rawContactId:J

    .line 912
    move-object/from16 v0, v19

    iput-wide v12, v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->contactId:J

    .line 913
    const/16 v20, 0x0

    const/4 v11, 0x0

    .local v11, "contactCursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .local v15, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 914
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "display_name"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "photo_id"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 915
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 913
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 916
    .local v11, "contactCursor":Landroid/database/Cursor;
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 917
    .end local v15    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v18, "stream":Ljava/io/ByteArrayOutputStream;
    if-eqz v11, :cond_0

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 918
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->name:Ljava/lang/String;

    .line 919
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 920
    .local v16, "photoId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v16, v6

    if-eqz v5, :cond_0

    .line 921
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v5}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 922
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    .line 923
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v10, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 924
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->photo:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 930
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "photoId":J
    :cond_0
    if-eqz v18, :cond_1

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object/from16 v6, v20

    :goto_0
    if-eqz v11, :cond_2

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v5, v6

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 928
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v15, v18

    .line 929
    .end local v11    # "contactCursor":Landroid/database/Cursor;
    .end local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Unable to create stream for making photo byte array!"

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    .end local v14    # "e":Ljava/io/IOException;
    :goto_3
    return-object v19

    .line 930
    .restart local v11    # "contactCursor":Landroid/database/Cursor;
    .restart local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v5

    if-eqz v6, :cond_3

    if-eq v6, v5, :cond_2

    :try_start_5
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v5, v6

    goto :goto_1

    :cond_4
    move-object/from16 v15, v18

    .end local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v15, "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v11    # "contactCursor":Landroid/database/Cursor;
    .local v15, "stream":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v5

    .end local v15    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_4
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v6

    move-object/from16 v21, v6

    move-object v6, v5

    move-object/from16 v5, v21

    :goto_5
    if-eqz v15, :cond_5

    :try_start_7
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    move-object v7, v6

    :cond_6
    :goto_6
    if-eqz v11, :cond_7

    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_7
    move-object v6, v7

    :cond_8
    :goto_7
    if-eqz v6, :cond_9

    :try_start_9
    throw v6

    .line 928
    :catch_4
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 930
    .end local v14    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    if-eqz v6, :cond_6

    if-eq v6, v7, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v6

    goto :goto_6

    :catch_6
    move-exception v6

    if-eqz v7, :cond_8

    if-eq v7, v6, :cond_7

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v7

    goto :goto_7

    :cond_9
    throw v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .restart local v15    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    move-object/from16 v6, v20

    goto :goto_5

    .end local v15    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "contactCursor":Landroid/database/Cursor;
    .restart local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v5

    move-object/from16 v6, v20

    move-object/from16 v15, v18

    .end local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v15, "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v15    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v5

    move-object/from16 v15, v18

    .end local v18    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;)Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawContactDelta"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 871
    const-string/jumbo v5, "vnd.android.cursor.item/photo"

    .line 870
    invoke-virtual {p1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    .line 873
    .local v3, "photoDelta":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v5, "vnd.android.cursor.item/name"

    .line 872
    invoke-virtual {p1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 875
    .local v1, "nameDelta":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    .line 874
    invoke-virtual {p1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    .line 877
    .local v2, "phoneNumberDelta":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    .line 876
    invoke-virtual {p1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    .line 879
    .local v0, "emailDelta":Lcom/android/contacts/common/model/ValuesDelta;
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    invoke-direct {v4}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;-><init>()V

    .line 880
    .local v4, "wrapper":Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->rawContactId:J

    .line 881
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->contactId:J

    .line 882
    if-eqz v1, :cond_0

    .line 884
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 883
    invoke-static {p0, v5}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->name:Ljava/lang/String;

    .line 886
    :cond_0
    if-eqz v3, :cond_1

    .line 887
    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoto()[B

    move-result-object v5

    iput-object v5, v4, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->photo:[B

    .line 889
    :cond_1
    if-eqz v2, :cond_2

    .line 890
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->phoneNumber:Ljava/lang/String;

    .line 892
    :cond_2
    if-eqz v0, :cond_3

    .line 893
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getEmailData()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->email:Ljava/lang/String;

    .line 896
    :cond_3
    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 939
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->rawContactId:J

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->contactId:J

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->name:Ljava/lang/String;

    .line 956
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->phoneNumber:Ljava/lang/String;

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->email:Ljava/lang/String;

    .line 958
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->photo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 952
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 944
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->rawContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 945
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->contactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 946
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->photo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 943
    return-void
.end method
