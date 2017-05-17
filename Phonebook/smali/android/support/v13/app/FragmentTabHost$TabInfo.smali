.class final Landroid/support/v13/app/FragmentTabHost$TabInfo;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fragment:Landroid/app/Fragment;

.field private final tag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic -get2(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0

    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    return-object p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p3, "_args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 62
    iput-object p3, p0, Landroid/support/v13/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    .line 59
    return-void
.end method
