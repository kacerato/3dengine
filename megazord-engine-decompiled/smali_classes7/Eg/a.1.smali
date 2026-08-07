.class public final LEg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LEg/T;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LEg/a;->a:Ljava/lang/Object;

    return-void
.end method
