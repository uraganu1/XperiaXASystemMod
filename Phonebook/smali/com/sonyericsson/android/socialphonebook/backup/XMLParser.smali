.class Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLParser.java"


# instance fields
.field private mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

.field private mAddressFlag:Z

.field private mCallDATE:Z

.field private mCallDURATION:Z

.field private mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

.field private mCallLogFlag:Z

.field private mCallNew:Z

.field private mCallNumberLabel:Z

.field private mCallNumberPresentationFlag:Z

.field private mCallNumberType:Z

.field private mCharactersBuffer:Ljava/lang/StringBuffer;

.field private mCityFlag:Z

.field private mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

.field private mContactFlag:Z

.field private mCountryFlag:Z

.field private mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

.field private mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

.field private mEmailFlag:Z

.field private mIdFlag:Z

.field private mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

.field private mImFlag:Z

.field private mImProtocolFlag:Z

.field private mList:Ljava/util/ArrayList;

.field private mNameFlag:Z

.field private mNotesFlag:Z

.field private mNumberFlag:Z

.field private mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

.field private mOrganizationFlag:Z

.field private mPhone:Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

.field private mPhoneFlag:Z

.field private mPoBoxFlag:Z

.field private mPostalCodeFlag:Z

.field private mRuntime:Ljava/lang/Runtime;

.field private mStateFlag:Z

.field private mStreetFlag:Z

.field private mTitleFlag:Z

.field private mTypeFlag:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;)V
    .locals 2
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "dbWriter"    # Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContactFlag:Z

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLogFlag:Z

    .line 41
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIdFlag:Z

    .line 43
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNameFlag:Z

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhoneFlag:Z

    .line 47
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNumberFlag:Z

    .line 49
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTypeFlag:Z

    .line 51
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddressFlag:Z

    .line 53
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPoBoxFlag:Z

    .line 55
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mStreetFlag:Z

    .line 57
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCityFlag:Z

    .line 59
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPostalCodeFlag:Z

    .line 61
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mStateFlag:Z

    .line 63
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCountryFlag:Z

    .line 65
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmailFlag:Z

    .line 67
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImFlag:Z

    .line 69
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImProtocolFlag:Z

    .line 71
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganizationFlag:Z

    .line 73
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTitleFlag:Z

    .line 75
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNotesFlag:Z

    .line 77
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallDATE:Z

    .line 79
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallDURATION:Z

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNew:Z

    .line 83
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberType:Z

    .line 85
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberLabel:Z

    .line 87
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberPresentationFlag:Z

    .line 89
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mList:Ljava/util/ArrayList;

    .line 91
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhone:Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    .line 93
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    .line 95
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    .line 97
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    .line 99
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    .line 101
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    .line 103
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    .line 105
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    .line 107
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mRuntime:Ljava/lang/Runtime;

    .line 109
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mList:Ljava/util/ArrayList;

    .line 119
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    .line 120
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mRuntime:Ljava/lang/Runtime;

    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    .line 117
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 358
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 359
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContactFlag:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIdFlag:Z

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setId(Ljava/lang/String;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContactFlag:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNameFlag:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganizationFlag:Z

    if-eqz v2, :cond_3

    .line 364
    :cond_2
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhoneFlag:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNumberFlag:Z

    if-eqz v2, :cond_4

    .line 365
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhone:Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->setNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 366
    :cond_4
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhoneFlag:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTypeFlag:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhone:Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    if-eqz v2, :cond_5

    .line 367
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhone:Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_5
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPoBoxFlag:Z

    if-eqz v2, :cond_6

    .line 369
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 370
    :cond_6
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mStreetFlag:Z

    if-eqz v2, :cond_7

    .line 371
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 372
    :cond_7
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCityFlag:Z

    if-eqz v2, :cond_8

    .line 373
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 374
    :cond_8
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPostalCodeFlag:Z

    if-eqz v2, :cond_9

    .line 375
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 376
    :cond_9
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mStateFlag:Z

    if-eqz v2, :cond_a

    .line 377
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 378
    :cond_a
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCountryFlag:Z

    if-eqz v2, :cond_b

    .line 379
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 380
    :cond_b
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddressFlag:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTypeFlag:Z

    if-eqz v2, :cond_c

    .line 381
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_c
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmailFlag:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddressFlag:Z

    if-eqz v2, :cond_d

    .line 383
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 384
    :cond_d
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmailFlag:Z

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTypeFlag:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    if-eqz v2, :cond_e

    .line 385
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :cond_e
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImFlag:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddressFlag:Z

    if-eqz v2, :cond_f

    .line 387
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 388
    :cond_f
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImFlag:Z

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTypeFlag:Z

    if-eqz v2, :cond_10

    .line 389
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :cond_10
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImProtocolFlag:Z

    if-eqz v2, :cond_11

    .line 391
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->setProtocol(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    :cond_11
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTitleFlag:Z

    if-eqz v2, :cond_12

    .line 393
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 394
    :cond_12
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganizationFlag:Z

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNameFlag:Z

    if-eqz v2, :cond_13

    .line 395
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 396
    :cond_13
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganizationFlag:Z

    if-eqz v2, :cond_14

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTypeFlag:Z

    if-eqz v2, :cond_14

    .line 397
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :cond_14
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNotesFlag:Z

    if-eqz v2, :cond_15

    .line 399
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 400
    :cond_15
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLogFlag:Z

    if-eqz v2, :cond_16

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIdFlag:Z

    if-eqz v2, :cond_16

    .line 401
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :cond_16
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLogFlag:Z

    if-eqz v2, :cond_18

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNumberFlag:Z

    if-eqz v2, :cond_18

    .line 403
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isLegacyNumberPresentation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 404
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setNumber(Ljava/lang/String;)V

    .line 405
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->convertLegacyNumberPresentation(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setNumberPresentation(I)V

    goto/16 :goto_0

    .line 408
    :cond_17
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :cond_18
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallDATE:Z

    if-eqz v2, :cond_19

    .line 411
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    :cond_19
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallDURATION:Z

    if-eqz v2, :cond_1a

    .line 413
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setDuration(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :cond_1a
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLogFlag:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTypeFlag:Z

    if-eqz v2, :cond_1b

    .line 416
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setType(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setType(I)V

    goto/16 :goto_0

    .line 420
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1b
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNew:Z

    if-eqz v2, :cond_1c

    .line 421
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setNew(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :cond_1c
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLogFlag:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNameFlag:Z

    if-eqz v2, :cond_1d

    .line 423
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 424
    :cond_1d
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberType:Z

    if-eqz v2, :cond_1e

    .line 425
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setCachedNumberType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_1e
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberLabel:Z

    if-eqz v2, :cond_1f

    .line 427
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setCachedNumberLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :cond_1f
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberPresentationFlag:Z

    if-eqz v2, :cond_0

    .line 430
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setNumberPresentation(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 431
    :catch_1
    move-exception v0

    .line 432
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setNumberPresentation(I)V

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 209
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 211
    return-void

    .line 214
    :cond_0
    const-string/jumbo v0, "Contact"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 215
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContactFlag:Z

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->contactExists(Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mRuntime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    if-eqz v0, :cond_5

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mDatabaseWriter:Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/DatabaseWriter;->saveContactsToDatabase(Ljava/util/ArrayList;)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    :cond_2
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    .line 350
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 207
    return-void

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 233
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXException;

    .line 234
    const-string/jumbo v1, "No Free memory available. Unable to restore contacts"

    .line 233
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_6
    const-string/jumbo v0, "ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIdFlag:Z

    goto :goto_1

    .line 241
    :cond_7
    const-string/jumbo v0, "Name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 242
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNameFlag:Z

    .line 243
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContactFlag:Z

    if-eqz v0, :cond_a

    .line 244
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganizationFlag:Z

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    if-nez v0, :cond_8

    .line 247
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    .line 249
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->setOrganization(Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setFullName(Ljava/lang/String;)V

    goto :goto_1

    .line 254
    :cond_a
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLogFlag:Z

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setCachedName(Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_b
    const-string/jumbo v0, "Phone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 259
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhoneFlag:Z

    goto :goto_1

    .line 260
    :cond_c
    const-string/jumbo v0, "Number"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 261
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNumberFlag:Z

    goto/16 :goto_1

    .line 262
    :cond_d
    const-string/jumbo v0, "Type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 263
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTypeFlag:Z

    .line 264
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhoneFlag:Z

    if-eqz v0, :cond_10

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhone:Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhone:Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 268
    :cond_e
    :goto_2
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhone:Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    goto/16 :goto_1

    .line 266
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhone:Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->addPhone(Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;)V

    goto :goto_2

    .line 269
    :cond_10
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmailFlag:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    if-eqz v0, :cond_13

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 273
    :cond_11
    :goto_3
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    goto/16 :goto_1

    .line 271
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->addEmail(Lcom/sonyericsson/android/socialphonebook/backup/model/Email;)V

    goto :goto_3

    .line 274
    :cond_13
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImFlag:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    if-eqz v0, :cond_16

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 278
    :cond_14
    :goto_4
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    goto/16 :goto_1

    .line 276
    :cond_15
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->addImAddresses(Lcom/sonyericsson/android/socialphonebook/backup/model/IM;)V

    goto :goto_4

    .line 279
    :cond_16
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddressFlag:Z

    if-eqz v0, :cond_19

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 283
    :cond_17
    :goto_5
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    goto/16 :goto_1

    .line 281
    :cond_18
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->addAddress(Lcom/sonyericsson/android/socialphonebook/backup/model/Address;)V

    goto :goto_5

    .line 284
    :cond_19
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganizationFlag:Z

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 288
    :cond_1a
    :goto_6
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    goto/16 :goto_1

    .line 286
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->addOrganization(Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;)V

    goto :goto_6

    .line 290
    :cond_1c
    const-string/jumbo v0, "Address"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 291
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddressFlag:Z

    .line 292
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmailFlag:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    if-eqz v0, :cond_1d

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;->setAddress(Ljava/lang/String;)V

    .line 295
    :cond_1d
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImFlag:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    if-eqz v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 298
    :cond_1e
    const-string/jumbo v0, "POBox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 299
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPoBoxFlag:Z

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setPoBox(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 301
    :cond_1f
    const-string/jumbo v0, "Street"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 302
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mStreetFlag:Z

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setStreet(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 304
    :cond_20
    const-string/jumbo v0, "City"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 305
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCityFlag:Z

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setCity(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 307
    :cond_21
    const-string/jumbo v0, "PostalCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 308
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPostalCodeFlag:Z

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setPostalCode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 310
    :cond_22
    const-string/jumbo v0, "State"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 311
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mStateFlag:Z

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setState(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 313
    :cond_23
    const-string/jumbo v0, "Country"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 314
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCountryFlag:Z

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 316
    :cond_24
    const-string/jumbo v0, "Email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 317
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmailFlag:Z

    goto/16 :goto_1

    .line 318
    :cond_25
    const-string/jumbo v0, "Im"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 319
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImFlag:Z

    goto/16 :goto_1

    .line 320
    :cond_26
    const-string/jumbo v0, "Protocol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 321
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImProtocolFlag:Z

    goto/16 :goto_1

    .line 322
    :cond_27
    const-string/jumbo v0, "Organization"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 323
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganizationFlag:Z

    goto/16 :goto_1

    .line 324
    :cond_28
    const-string/jumbo v0, "Title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 325
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTitleFlag:Z

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 327
    :cond_29
    const-string/jumbo v0, "Notes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 328
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNotesFlag:Z

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCharactersBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->addNotes(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 330
    :cond_2a
    const-string/jumbo v0, "Call"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 331
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLogFlag:Z

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    if-eqz v0, :cond_2b

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_2b
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    goto/16 :goto_1

    .line 336
    :cond_2c
    const-string/jumbo v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 337
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallDATE:Z

    goto/16 :goto_1

    .line 338
    :cond_2d
    const-string/jumbo v0, "Duration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 339
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallDURATION:Z

    goto/16 :goto_1

    .line 340
    :cond_2e
    const-string/jumbo v0, "New"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 341
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNew:Z

    goto/16 :goto_1

    .line 342
    :cond_2f
    const-string/jumbo v0, "NumberType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 343
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberType:Z

    goto/16 :goto_1

    .line 344
    :cond_30
    const-string/jumbo v0, "NumberLabel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 345
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberLabel:Z

    goto/16 :goto_1

    .line 346
    :cond_31
    const-string/jumbo v0, "NumberPresentation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberPresentationFlag:Z

    goto/16 :goto_1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string/jumbo v0, "Contact"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContactFlag:Z

    .line 135
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mContact:Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string/jumbo v0, "ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIdFlag:Z

    goto :goto_0

    .line 138
    :cond_2
    const-string/jumbo v0, "Name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNameFlag:Z

    goto :goto_0

    .line 140
    :cond_3
    const-string/jumbo v0, "Phone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhoneFlag:Z

    goto :goto_0

    .line 142
    :cond_4
    const-string/jumbo v0, "Number"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNumberFlag:Z

    .line 144
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhoneFlag:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    invoke-direct {v0, v2, v2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPhone:Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    goto :goto_0

    .line 147
    :cond_5
    const-string/jumbo v0, "Type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTypeFlag:Z

    goto :goto_0

    .line 149
    :cond_6
    const-string/jumbo v0, "Address"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddressFlag:Z

    .line 151
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmailFlag:Z

    if-eqz v0, :cond_7

    .line 152
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    invoke-direct {v0, v2, v2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Email;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmail:Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    goto :goto_0

    .line 153
    :cond_7
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImFlag:Z

    if-eqz v0, :cond_8

    .line 154
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/IM;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mIm:Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    goto :goto_0

    .line 156
    :cond_8
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mAddress:Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    goto :goto_0

    .line 158
    :cond_9
    const-string/jumbo v0, "POBox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 159
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPoBoxFlag:Z

    goto :goto_0

    .line 160
    :cond_a
    const-string/jumbo v0, "Street"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 161
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mStreetFlag:Z

    goto/16 :goto_0

    .line 162
    :cond_b
    const-string/jumbo v0, "City"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 163
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCityFlag:Z

    goto/16 :goto_0

    .line 164
    :cond_c
    const-string/jumbo v0, "PostalCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 165
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mPostalCodeFlag:Z

    goto/16 :goto_0

    .line 166
    :cond_d
    const-string/jumbo v0, "State"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 167
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mStateFlag:Z

    goto/16 :goto_0

    .line 168
    :cond_e
    const-string/jumbo v0, "Country"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 169
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCountryFlag:Z

    goto/16 :goto_0

    .line 170
    :cond_f
    const-string/jumbo v0, "Email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 171
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mEmailFlag:Z

    goto/16 :goto_0

    .line 172
    :cond_10
    const-string/jumbo v0, "Im"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 173
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImFlag:Z

    goto/16 :goto_0

    .line 174
    :cond_11
    const-string/jumbo v0, "Protocol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 175
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mImProtocolFlag:Z

    goto/16 :goto_0

    .line 176
    :cond_12
    const-string/jumbo v0, "Organization"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 177
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganizationFlag:Z

    goto/16 :goto_0

    .line 178
    :cond_13
    const-string/jumbo v0, "Title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 179
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mTitleFlag:Z

    .line 180
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mOrganization:Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    goto/16 :goto_0

    .line 181
    :cond_14
    const-string/jumbo v0, "Notes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 182
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mNotesFlag:Z

    goto/16 :goto_0

    .line 183
    :cond_15
    const-string/jumbo v0, "Call"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 184
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLogFlag:Z

    .line 185
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallLog:Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    goto/16 :goto_0

    .line 186
    :cond_16
    const-string/jumbo v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 187
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallDATE:Z

    goto/16 :goto_0

    .line 188
    :cond_17
    const-string/jumbo v0, "Duration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 189
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallDURATION:Z

    goto/16 :goto_0

    .line 190
    :cond_18
    const-string/jumbo v0, "New"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 191
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNew:Z

    goto/16 :goto_0

    .line 192
    :cond_19
    const-string/jumbo v0, "NumberType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 193
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberType:Z

    goto/16 :goto_0

    .line 194
    :cond_1a
    const-string/jumbo v0, "NumberLabel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 195
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberLabel:Z

    goto/16 :goto_0

    .line 196
    :cond_1b
    const-string/jumbo v0, "NumberPresentation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/XMLParser;->mCallNumberPresentationFlag:Z

    goto/16 :goto_0
.end method
