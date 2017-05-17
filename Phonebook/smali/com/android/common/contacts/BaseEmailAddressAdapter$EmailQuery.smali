.class Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;
.super Ljava/lang/Object;
.source "BaseEmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/contacts/BaseEmailAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmailQuery"
.end annotation


# static fields
.field public static final ADDRESS:I = 0x1

.field public static final NAME:I

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "data1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 114
    sput-object v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;->PROJECTION:[Ljava/lang/String;

    .line 113
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
