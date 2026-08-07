.class public final Lcf/o;
.super LTe/c;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/o;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 1

    iget-object v0, p0, Lcf/o;->b:Ljava/lang/Throwable;

    invoke-static {v0, p1}, LYe/e;->e(Ljava/lang/Throwable;LTe/f;)V

    return-void
.end method
