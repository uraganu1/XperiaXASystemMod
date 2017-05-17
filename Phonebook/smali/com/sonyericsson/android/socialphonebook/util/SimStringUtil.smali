.class public Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;
.super Ljava/lang/Object;
.source "SimStringUtil.java"


# static fields
.field private static final SIM1:Ljava/lang/String; = "SIM1"

.field private static final SIM2:Ljava/lang/String; = "SIM2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClearContactsReminder(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f09030b

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 136
    const v0, 0x7f0902ac

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 130
    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    .line 129
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 133
    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    .line 132
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEmptyLoading(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f090305

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 32
    packed-switch p1, :pswitch_data_0

    .line 38
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getImportingSimContacts(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f090312

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 169
    const v0, 0x7f0902c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getReplaceConfirmation(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f090310

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 122
    const v0, 0x7f0902c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    .line 116
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 120
    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    .line 119
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSimCardFull(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f090308

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 180
    const v0, 0x7f090250

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSimCardLoading(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f090307

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 147
    const v0, 0x7f0902de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSimCardMemoryFull(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f09030f

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 109
    const v0, 0x7f0902c2

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    .line 102
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    .line 105
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSimCardNotAvailable(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f09030c

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 84
    const v0, 0x7f0902b2

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    .line 77
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    .line 80
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSimCardNotInserted(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f09030d

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 62
    packed-switch p1, :pswitch_data_0

    .line 70
    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    .line 64
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    .line 67
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSimContactsEmpty(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f090311

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 152
    packed-switch p1, :pswitch_data_0

    .line 158
    const v0, 0x7f0902c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSimContactsTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f090306

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 51
    packed-switch p1, :pswitch_data_0

    .line 57
    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSimTxt(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x7f09030e

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 95
    const v0, 0x7f0902b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM1"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "SIM2"

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
