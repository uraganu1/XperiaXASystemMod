.class public final Lcom/sonyericsson/conversations/model/MessageProjection;
.super Ljava/lang/Object;
.source "MessageProjection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;
    }
.end annotation


# static fields
.field public static final COMMON_PROJECTION:[Ljava/lang/String;

.field private static final MMS_PROJECTION:[Ljava/lang/String;

.field public static final SEQUENCE_TIME_ORDERED_COMMON_PROJECTION:[Ljava/lang/String;

.field private static final SMS_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION_EX:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "transport_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "read"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    const-string/jumbo v1, "normalized_date"

    aput-object v1, v0, v7

    .line 58
    const-string/jumbo v1, "delivery_status"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "star_status"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "type"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "body"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "status"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "semc_message_priority"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub_id"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "m_type"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "msg_box"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub_cs"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "d_rpt"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "rr"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "err_type"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "pri"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "m_size"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 55
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->COMMON_PROJECTION:[Ljava/lang/String;

    .line 72
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    const-string/jumbo v1, "transport_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "read"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    const-string/jumbo v1, "normalized_date"

    aput-object v1, v0, v7

    .line 75
    const-string/jumbo v1, "delivery_status"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "star_status"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "sequence_time"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "type"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "body"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "status"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "semc_message_priority"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub_id"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "m_type"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "msg_box"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub_cs"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "d_rpt"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "rr"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "err_type"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "pri"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "m_size"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 72
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->SEQUENCE_TIME_ORDERED_COMMON_PROJECTION:[Ljava/lang/String;

    .line 89
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 90
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "read"

    aput-object v1, v0, v4

    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    const-string/jumbo v1, "type"

    aput-object v1, v0, v6

    const-string/jumbo v1, "body"

    aput-object v1, v0, v7

    const-string/jumbo v1, "status"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "semc_message_priority"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "thread_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub_id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 89
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->SMS_PROJECTION:[Ljava/lang/String;

    .line 101
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 102
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "read"

    aput-object v1, v0, v4

    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    const-string/jumbo v1, "type"

    aput-object v1, v0, v6

    const-string/jumbo v1, "body"

    aput-object v1, v0, v7

    const-string/jumbo v1, "status"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "semc_message_priority"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "address"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "thread_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 104
    const-string/jumbo v1, "service_center"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 101
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->SMS_PROJECTION_EX:[Ljava/lang/String;

    .line 110
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "read"

    aput-object v1, v0, v4

    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    const-string/jumbo v1, "m_type"

    aput-object v1, v0, v6

    const-string/jumbo v1, "msg_box"

    aput-object v1, v0, v7

    const-string/jumbo v1, "sub"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "sub_cs"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "d_rpt"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "rr"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "pri"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "thread_id"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "sub_id"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "star_status"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "m_size"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "resp_st"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 110
    sput-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->MMS_PROJECTION:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMmsProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->MMS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getSmsProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/sonyericsson/conversations/model/MessageProjection;->SMS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
