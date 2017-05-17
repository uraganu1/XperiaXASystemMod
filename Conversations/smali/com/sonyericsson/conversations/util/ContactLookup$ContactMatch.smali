.class public Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
.super Ljava/lang/Object;
.source "ContactLookup.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactMatch"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x684888ff7d35f5f7L


# instance fields
.field public final address:Ljava/lang/String;

.field public final contactId:J

.field public final mIsMe:Z

.field public final mPhotoId:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "photoId"    # Ljava/lang/String;
    .param p6, "isMe"    # Z

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-wide p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->contactId:J

    .line 101
    iput-object p3, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->address:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->mPhotoId:Ljava/lang/String;

    .line 104
    iput-boolean p6, p0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->mIsMe:Z

    .line 99
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "photoId"    # Ljava/lang/String;
    .param p6, "isMe"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
