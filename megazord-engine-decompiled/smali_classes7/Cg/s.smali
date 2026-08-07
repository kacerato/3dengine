.class public final LCg/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LEg/T;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:LEg/T;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:LEg/T;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LEg/T;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LCg/s;->a:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LCg/s;->b:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "DONE"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LCg/s;->c:LEg/T;

    return-void
.end method
