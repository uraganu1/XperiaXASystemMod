.class public Lcom/sonymobile/rcs/utils/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# static fields
.field private static final CODE_TABLE:[C

.field private static cyclicCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v4, 0x2b

    const/4 v3, 0x0

    const/16 v0, 0x40

    .line 32
    new-array v0, v0, [C

    const/16 v1, 0x41

    aput-char v1, v0, v3

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-char v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x72

    aput-char v1, v0, v4

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/16 v1, 0x77

    aput-char v1, v0, v5

    const/16 v1, 0x78

    aput-char v1, v0, v6

    const/16 v1, 0x79

    aput-char v1, v0, v7

    const/16 v1, 0x33

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x34

    aput-char v5, v0, v1

    const/16 v1, 0x35

    aput-char v6, v0, v1

    const/16 v1, 0x36

    aput-char v7, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x3e

    aput-char v4, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    sput-object v0, Lcom/sonymobile/rcs/utils/IdGenerator;->CODE_TABLE:[C

    .line 42
    sput v3, Lcom/sonymobile/rcs/utils/IdGenerator;->cyclicCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode64(JI)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # J
    .param p2, "counter"    # I

    .prologue
    const/16 v4, 0xa

    .line 89
    new-array v2, v4, [C

    .local v2, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    .line 92
    if-lt v0, v3, :cond_0

    .line 98
    :goto_1
    if-lt v0, v4, :cond_1

    .line 104
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 93
    :cond_0
    long-to-int v3, p0

    and-int/lit8 v1, v3, 0x3f

    .local v1, "idx":I
    const/4 v3, 0x6

    .line 94
    shr-long/2addr p0, v3

    .line 95
    sget-object v3, Lcom/sonymobile/rcs/utils/IdGenerator;->CODE_TABLE:[C

    aget-char v3, v3, v1

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "idx":I
    :cond_1
    and-int/lit8 v1, p2, 0x3f

    .line 100
    .restart local v1    # "idx":I
    shr-int/lit8 p2, p2, 0x6

    .line 101
    sget-object v3, Lcom/sonymobile/rcs/utils/IdGenerator;->CODE_TABLE:[C

    aget-char v3, v3, v1

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized getIdentifier()Ljava/lang/String;
    .locals 5

    .prologue
    const-class v4, Lcom/sonymobile/rcs/utils/IdGenerator;

    monitor-enter v4

    .line 113
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "time":J
    const/4 v0, -0x1

    .line 116
    .local v0, "counter":I
    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->increment()I

    move-result v0

    .line 118
    invoke-static {v2, v3, v0}, Lcom/sonymobile/rcs/utils/IdGenerator;->encode64(JI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v4

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method private static declared-synchronized increment()I
    .locals 3

    .prologue
    const-class v1, Lcom/sonymobile/rcs/utils/IdGenerator;

    monitor-enter v1

    .line 75
    :try_start_0
    sget v0, Lcom/sonymobile/rcs/utils/IdGenerator;->cyclicCounter:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/sonymobile/rcs/utils/IdGenerator;->cyclicCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
