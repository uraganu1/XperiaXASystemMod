.class public Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;
.super Ljava/lang/Object;
.source "JoynContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactNumber"
.end annotation


# instance fields
.field private final mContactId:J

.field private final mContactName:Ljava/lang/String;

.field private final mIsPreselected:Z

.field private final mPhoneNumber:Ljava/lang/String;

.field private final mPhoneType:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Z)V
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "phoneType"    # I
    .param p3, "contactId"    # J
    .param p5, "contactName"    # Ljava/lang/String;
    .param p6, "isPreselected"    # Z

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-wide p3, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mContactId:J

    .line 250
    iput-object p1, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mPhoneNumber:Ljava/lang/String;

    .line 251
    iput p2, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mPhoneType:I

    .line 252
    iput-object p5, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mContactName:Ljava/lang/String;

    .line 253
    iput-boolean p6, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mIsPreselected:Z

    .line 248
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mContactId:J

    return-wide v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mPhoneType:I

    return v0
.end method

.method public isPreselected()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$ContactNumber;->mIsPreselected:Z

    return v0
.end method
