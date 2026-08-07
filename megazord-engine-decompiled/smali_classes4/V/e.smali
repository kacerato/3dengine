.class public LV/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LV/f<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final a:LV/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV/e<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:LV/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LV/e;

    invoke-direct {v0}, LV/e;-><init>()V

    sput-object v0, LV/e;->a:LV/e;

    new-instance v0, LV/e$a;

    invoke-direct {v0}, LV/e$a;-><init>()V

    sput-object v0, LV/e;->b:LV/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()LV/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "LV/f<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, LV/e;->a:LV/e;

    return-object v0
.end method

.method public static c()LV/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "LV/g<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, LV/e;->b:LV/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;LV/f$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
