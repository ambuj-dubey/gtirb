
;;;;    ByteInterval.lisp

;;; Generated by the protocol buffer compiler.  DO NOT EDIT!


(cl:in-package #:common-lisp-user)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package '#:gtirb.proto)
    (make-package '#:gtirb.proto :use nil)))
(in-package #:gtirb.proto)
(cl:declaim #.com.google.base:*optimize-default*)

(cl:defclass block (pb:protocol-buffer)
  (
  (offset
   :accessor offset
   :initform 0
   :type (cl:unsigned-byte 64))
  (code
   :writer (cl:setf code)
   :initform cl:nil
   :type (cl:or cl:null gtirb.proto::code-block))
  (data
   :writer (cl:setf data)
   :initform cl:nil
   :type (cl:or cl:null gtirb.proto::data-block))
  (%has-bits%
   :accessor %has-bits%
   :initform 0
   :type (cl:unsigned-byte 3))
  (pb::%cached-size%
   :initform 0
   :type (cl:integer 0 #.(cl:1- cl:array-dimension-limit)))
  ))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'block))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'offset))


(cl:defmethod (cl:setf offset) :after (x (self block))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-offset)
  (cl:defgeneric has-offset (proto)))
(cl:defmethod has-offset ((self block))
  (cl:logbitp 0 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-offset))

(cl:unless (cl:fboundp 'clear-offset)
  (cl:defgeneric clear-offset (proto)))
(cl:defmethod clear-offset ((self block))
  (cl:setf (cl:slot-value self 'offset) 0)
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-offset))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'code))

(cl:unless (cl:fboundp 'code)
  (cl:defgeneric code (proto)))
(cl:defmethod code ((self block))
  (cl:let ((result (cl:slot-value self 'code)))
    (cl:when (cl:null result)
      (cl:setf result (cl:make-instance 'gtirb.proto::code-block))
      (cl:setf (cl:slot-value self 'code) result))
      (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1)
    result))

(cl:defmethod (cl:setf code) :after (x (self block))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-code)
  (cl:defgeneric has-code (proto)))
(cl:defmethod has-code ((self block))
  (cl:logbitp 1 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-code))

(cl:unless (cl:fboundp 'clear-code)
  (cl:defgeneric clear-code (proto)))
(cl:defmethod clear-code ((self block))
  (cl:setf (cl:slot-value self 'code) cl:nil)
  (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-code))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'data))

(cl:unless (cl:fboundp 'data)
  (cl:defgeneric data (proto)))
(cl:defmethod data ((self block))
  (cl:let ((result (cl:slot-value self 'data)))
    (cl:when (cl:null result)
      (cl:setf result (cl:make-instance 'gtirb.proto::data-block))
      (cl:setf (cl:slot-value self 'data) result))
      (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1)
    result))

(cl:defmethod (cl:setf data) :after (x (self block))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-data)
  (cl:defgeneric has-data (proto)))
(cl:defmethod has-data ((self block))
  (cl:logbitp 2 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-data))

(cl:unless (cl:fboundp 'clear-data)
  (cl:defgeneric clear-data (proto)))
(cl:defmethod clear-data ((self block))
  (cl:setf (cl:slot-value self 'data) cl:nil)
  (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-data))


(cl:defmethod cl:print-object ((self block) stream)
  (cl:pprint-logical-block (stream cl:nil)
    (cl:print-unreadable-object (self stream :type cl:t :identity cl:t)
      (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_offset: ~s" (offset self)))
      (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_code: ~s" (code self)))
      (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_data: ~s" (data self)))
      ))
  (cl:values))

(cl:defmethod pb:clear ((self block))
  (cl:setf (cl:slot-value self 'offset) 0)
  (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'code) cl:nil))
  (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'data) cl:nil))
  (cl:setf (cl:slot-value self '%has-bits%) 0)
  (cl:values))

(cl:defmethod pb:is-initialized ((self block))
  cl:t)

(cl:defmethod pb:octet-size ((self block))
  (cl:let ((size 0))
    ;; uint64 offset = 1[json_name = "offset"];
    (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
      (cl:incf size
        (cl:+ 1 (varint:length64 (cl:slot-value self 'offset)))))
    ;; .gtirb.proto.CodeBlock code = 2[json_name = "code"];
    (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
      (cl:let ((s (pb:octet-size (cl:slot-value self 'code))))
        (cl:incf size (cl:+ 1 s (varint:length32 s)))))
    ;; .gtirb.proto.DataBlock data = 3[json_name = "data"];
    (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
      (cl:let ((s (pb:octet-size (cl:slot-value self 'data))))
        (cl:incf size (cl:+ 1 s (varint:length32 s)))))
    (cl:setf (cl:slot-value self 'pb::%cached-size%) size)
    size))

(cl:defmethod pb:serialize ((self block) buffer index limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index index limit)
              (cl:ignorable buffer limit))
  ;; uint64 offset = 1[json_name = "offset"];
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 8))
    (cl:setf index
             (varint:encode-uint64-carefully buffer index limit (cl:slot-value self 'offset))))
  ;; .gtirb.proto.CodeBlock code = 2[json_name = "code"];
  (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 18))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit (cl:slot-value (cl:slot-value self 'code) 'pb::%cached-size%)))
    (cl:setf index (pb:serialize (cl:slot-value self 'code) buffer index limit)))
  ;; .gtirb.proto.DataBlock data = 3[json_name = "data"];
  (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 26))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit (cl:slot-value (cl:slot-value self 'data) 'pb::%cached-size%)))
    (cl:setf index (pb:serialize (cl:slot-value self 'data) buffer index limit)))
  index)

(cl:defmethod pb:merge-from-array ((self block) buffer start limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index start limit))
  (cl:do ((index start index))
      ((cl:>= index limit) index)
    (cl:declare (cl:type com.google.base:vector-index index))
    (cl:multiple-value-bind (field-number wire-type new-index)
        (wire-format:parse-tag buffer index limit)
      (cl:setf index new-index)
      (cl:case field-number
        ;; uint64 offset = 1[json_name = "offset"];
        ((1)
          (cl:cond
            ((cl:= wire-type wire-format:+varint+)
              (cl:multiple-value-bind (value new-index)
                  (varint:parse-uint64-carefully buffer index limit)
                (cl:setf (cl:slot-value self 'offset) value)
                (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1)
                (cl:setf index new-index)))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; .gtirb.proto.CodeBlock code = 2[json_name = "code"];
        ((2)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint31-carefully buffer index limit)
                (cl:when (cl:> (cl:+ new-index length) limit)
                  (cl:error 'wire-format:data-exhausted))
                (cl:let ((message (cl:slot-value self 'code)))
                  (cl:when (cl:null message)
                    (cl:setf message (cl:make-instance 'gtirb.proto::code-block))
                    (cl:setf (cl:slot-value self 'code) message)
                    (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))
                  (cl:setf index (pb:merge-from-array message buffer new-index (cl:+ new-index length)))
                  (cl:when (cl:/= index (cl:+ new-index length))
                    (cl:error 'wire-format:alignment)))))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; .gtirb.proto.DataBlock data = 3[json_name = "data"];
        ((3)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint31-carefully buffer index limit)
                (cl:when (cl:> (cl:+ new-index length) limit)
                  (cl:error 'wire-format:data-exhausted))
                (cl:let ((message (cl:slot-value self 'data)))
                  (cl:when (cl:null message)
                    (cl:setf message (cl:make-instance 'gtirb.proto::data-block))
                    (cl:setf (cl:slot-value self 'data) message)
                    (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1))
                  (cl:setf index (pb:merge-from-array message buffer new-index (cl:+ new-index length)))
                  (cl:when (cl:/= index (cl:+ new-index length))
                    (cl:error 'wire-format:alignment)))))
            (cl:t (cl:error 'wire-format:alignment))))
        (cl:t
          (cl:when (cl:= wire-type wire-format:+end-group+)
            (cl:return-from pb:merge-from-array index))
          (cl:setf index (wire-format:skip-field field-number wire-type buffer index limit)))))))

(cl:defmethod pb:merge-from-message ((self block) (from block))
  (cl:when (cl:logbitp 0 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'offset) (cl:slot-value from 'offset))
    (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 1 (cl:slot-value from '%has-bits%))
    (cl:let ((message (cl:slot-value self 'code)))
      (cl:when (cl:null message)
        (cl:setf message (cl:make-instance 'gtirb.proto::code-block))
        (cl:setf (cl:slot-value self 'code) message)
        (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))
     (pb:merge-from-message message (cl:slot-value from 'code))))
  (cl:when (cl:logbitp 2 (cl:slot-value from '%has-bits%))
    (cl:let ((message (cl:slot-value self 'data)))
      (cl:when (cl:null message)
        (cl:setf message (cl:make-instance 'gtirb.proto::data-block))
        (cl:setf (cl:slot-value self 'data) message)
        (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1))
     (pb:merge-from-message message (cl:slot-value from 'data))))
  )


(cl:defclass byte-interval-symbolic-expressions-entry (pb:protocol-buffer)
  (
  (key
   :accessor key
   :initform 0
   :type (cl:unsigned-byte 64))
  (value
   :writer (cl:setf value)
   :initform cl:nil
   :type (cl:or cl:null gtirb.proto::symbolic-expression))
  (%has-bits%
   :accessor %has-bits%
   :initform 0
   :type (cl:unsigned-byte 2))
  (pb::%cached-size%
   :initform 0
   :type (cl:integer 0 #.(cl:1- cl:array-dimension-limit)))
  ))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'byte-interval-symbolic-expressions-entry))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'key))


(cl:defmethod (cl:setf key) :after (x (self byte-interval-symbolic-expressions-entry))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-key)
  (cl:defgeneric has-key (proto)))
(cl:defmethod has-key ((self byte-interval-symbolic-expressions-entry))
  (cl:logbitp 0 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-key))

(cl:unless (cl:fboundp 'clear-key)
  (cl:defgeneric clear-key (proto)))
(cl:defmethod clear-key ((self byte-interval-symbolic-expressions-entry))
  (cl:setf (cl:slot-value self 'key) 0)
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-key))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'value))

(cl:unless (cl:fboundp 'value)
  (cl:defgeneric value (proto)))
(cl:defmethod value ((self byte-interval-symbolic-expressions-entry))
  (cl:let ((result (cl:slot-value self 'value)))
    (cl:when (cl:null result)
      (cl:setf result (cl:make-instance 'gtirb.proto::symbolic-expression))
      (cl:setf (cl:slot-value self 'value) result))
      (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1)
    result))

(cl:defmethod (cl:setf value) :after (x (self byte-interval-symbolic-expressions-entry))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-value)
  (cl:defgeneric has-value (proto)))
(cl:defmethod has-value ((self byte-interval-symbolic-expressions-entry))
  (cl:logbitp 1 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-value))

(cl:unless (cl:fboundp 'clear-value)
  (cl:defgeneric clear-value (proto)))
(cl:defmethod clear-value ((self byte-interval-symbolic-expressions-entry))
  (cl:setf (cl:slot-value self 'value) cl:nil)
  (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-value))



(cl:defclass byte-interval (pb:protocol-buffer)
  (
  (uuid
   :accessor uuid
   :initform (cl:make-array 0 :element-type '(cl:unsigned-byte 8))
   :type (cl:simple-array (cl:unsigned-byte 8) (cl:*)))
  (blocks
   :accessor blocks
   :initform (cl:make-array
              0
              :element-type 'gtirb.proto::block
              :fill-pointer 0 :adjustable cl:t)
   :type (cl:vector gtirb.proto::block))
  (symbolic-expressions
   :accessor symbolic-expressions
   :initform (cl:make-array
              0
              :element-type 'gtirb.proto::byte-interval-symbolic-expressions-entry
              :fill-pointer 0 :adjustable cl:t)
   :type (cl:vector gtirb.proto::byte-interval-symbolic-expressions-entry))
  (has-address
   :accessor has-address
   :initform cl:nil
   :type cl:boolean)
  (address
   :accessor address
   :initform 0
   :type (cl:unsigned-byte 64))
  (size
   :accessor size
   :initform 0
   :type (cl:unsigned-byte 64))
  (contents
   :accessor contents
   :initform (cl:make-array 0 :element-type '(cl:unsigned-byte 8))
   :type (cl:simple-array (cl:unsigned-byte 8) (cl:*)))
  (%has-bits%
   :accessor %has-bits%
   :initform 0
   :type (cl:unsigned-byte 7))
  (pb::%cached-size%
   :initform 0
   :type (cl:integer 0 #.(cl:1- cl:array-dimension-limit)))
  ))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'byte-interval))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'uuid))


(cl:defmethod (cl:setf uuid) :after (x (self byte-interval))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-uuid)
  (cl:defgeneric has-uuid (proto)))
(cl:defmethod has-uuid ((self byte-interval))
  (cl:logbitp 0 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-uuid))

(cl:unless (cl:fboundp 'clear-uuid)
  (cl:defgeneric clear-uuid (proto)))
(cl:defmethod clear-uuid ((self byte-interval))
  (cl:setf (cl:slot-value self 'uuid) (cl:make-array 0 :element-type '(cl:unsigned-byte 8)))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-uuid))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'blocks))

(cl:unless (cl:fboundp 'clear-blocks)
  (cl:defgeneric clear-blocks (proto)))
(cl:defmethod clear-blocks ((self byte-interval))
  (cl:setf (cl:slot-value self 'blocks)
           (cl:make-array 0 :element-type 'gtirb.proto::block
            :fill-pointer 0 :adjustable cl:t))
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-blocks))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'symbolic-expressions))

(cl:unless (cl:fboundp 'clear-symbolic-expressions)
  (cl:defgeneric clear-symbolic-expressions (proto)))
(cl:defmethod clear-symbolic-expressions ((self byte-interval))
  (cl:setf (cl:slot-value self 'symbolic-expressions)
           (cl:make-array 0 :element-type 'gtirb.proto::byte-interval-symbolic-expressions-entry
            :fill-pointer 0 :adjustable cl:t))
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-symbolic-expressions))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-address))


(cl:defmethod (cl:setf has-address) :after (x (self byte-interval))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 3) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-has-address)
  (cl:defgeneric has-has-address (proto)))
(cl:defmethod has-has-address ((self byte-interval))
  (cl:logbitp 3 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-has-address))

(cl:unless (cl:fboundp 'clear-has-address)
  (cl:defgeneric clear-has-address (proto)))
(cl:defmethod clear-has-address ((self byte-interval))
  (cl:setf (cl:slot-value self 'has-address) cl:nil)
  (cl:setf (cl:ldb (cl:byte 1 3) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-has-address))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'address))


(cl:defmethod (cl:setf address) :after (x (self byte-interval))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 4) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-address)
  (cl:defgeneric has-address (proto)))
(cl:defmethod has-address ((self byte-interval))
  (cl:logbitp 4 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-address))

(cl:unless (cl:fboundp 'clear-address)
  (cl:defgeneric clear-address (proto)))
(cl:defmethod clear-address ((self byte-interval))
  (cl:setf (cl:slot-value self 'address) 0)
  (cl:setf (cl:ldb (cl:byte 1 4) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-address))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'size))


(cl:defmethod (cl:setf size) :after (x (self byte-interval))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 5) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-size)
  (cl:defgeneric has-size (proto)))
(cl:defmethod has-size ((self byte-interval))
  (cl:logbitp 5 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-size))

(cl:unless (cl:fboundp 'clear-size)
  (cl:defgeneric clear-size (proto)))
(cl:defmethod clear-size ((self byte-interval))
  (cl:setf (cl:slot-value self 'size) 0)
  (cl:setf (cl:ldb (cl:byte 1 5) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-size))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'contents))


(cl:defmethod (cl:setf contents) :after (x (self byte-interval))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 6) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-contents)
  (cl:defgeneric has-contents (proto)))
(cl:defmethod has-contents ((self byte-interval))
  (cl:logbitp 6 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-contents))

(cl:unless (cl:fboundp 'clear-contents)
  (cl:defgeneric clear-contents (proto)))
(cl:defmethod clear-contents ((self byte-interval))
  (cl:setf (cl:slot-value self 'contents) (cl:make-array 0 :element-type '(cl:unsigned-byte 8)))
  (cl:setf (cl:ldb (cl:byte 1 6) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-contents))


(cl:defmethod cl:print-object ((self byte-interval-symbolic-expressions-entry) stream)
  (cl:pprint-logical-block (stream cl:nil)
    (cl:print-unreadable-object (self stream :type cl:t :identity cl:t)
      (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_key: ~s" (key self)))
      (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_value: ~s" (value self)))
      ))
  (cl:values))

(cl:defmethod pb:clear ((self byte-interval-symbolic-expressions-entry))
  (cl:setf (cl:slot-value self 'key) 0)
  (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'value) cl:nil))
  (cl:setf (cl:slot-value self '%has-bits%) 0)
  (cl:values))

(cl:defmethod pb:is-initialized ((self byte-interval-symbolic-expressions-entry))
  cl:t)

(cl:defmethod pb:octet-size ((self byte-interval-symbolic-expressions-entry))
  (cl:let ((size 0))
    ;; uint64 key = 1[json_name = "key"];
    (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
      (cl:incf size
        (cl:+ 1 (varint:length64 (cl:slot-value self 'key)))))
    ;; .gtirb.proto.SymbolicExpression value = 2[json_name = "value"];
    (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
      (cl:let ((s (pb:octet-size (cl:slot-value self 'value))))
        (cl:incf size (cl:+ 1 s (varint:length32 s)))))
    (cl:setf (cl:slot-value self 'pb::%cached-size%) size)
    size))

(cl:defmethod pb:serialize ((self byte-interval-symbolic-expressions-entry) buffer index limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index index limit)
              (cl:ignorable buffer limit))
  ;; uint64 key = 1[json_name = "key"];
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 8))
    (cl:setf index
             (varint:encode-uint64-carefully buffer index limit (cl:slot-value self 'key))))
  ;; .gtirb.proto.SymbolicExpression value = 2[json_name = "value"];
  (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 18))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit (cl:slot-value (cl:slot-value self 'value) 'pb::%cached-size%)))
    (cl:setf index (pb:serialize (cl:slot-value self 'value) buffer index limit)))
  index)

(cl:defmethod pb:merge-from-array ((self byte-interval-symbolic-expressions-entry) buffer start limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index start limit))
  (cl:do ((index start index))
      ((cl:>= index limit) index)
    (cl:declare (cl:type com.google.base:vector-index index))
    (cl:multiple-value-bind (field-number wire-type new-index)
        (wire-format:parse-tag buffer index limit)
      (cl:setf index new-index)
      (cl:case field-number
        ;; uint64 key = 1[json_name = "key"];
        ((1)
          (cl:cond
            ((cl:= wire-type wire-format:+varint+)
              (cl:multiple-value-bind (value new-index)
                  (varint:parse-uint64-carefully buffer index limit)
                (cl:setf (cl:slot-value self 'key) value)
                (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1)
                (cl:setf index new-index)))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; .gtirb.proto.SymbolicExpression value = 2[json_name = "value"];
        ((2)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint31-carefully buffer index limit)
                (cl:when (cl:> (cl:+ new-index length) limit)
                  (cl:error 'wire-format:data-exhausted))
                (cl:let ((message (cl:slot-value self 'value)))
                  (cl:when (cl:null message)
                    (cl:setf message (cl:make-instance 'gtirb.proto::symbolic-expression))
                    (cl:setf (cl:slot-value self 'value) message)
                    (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))
                  (cl:setf index (pb:merge-from-array message buffer new-index (cl:+ new-index length)))
                  (cl:when (cl:/= index (cl:+ new-index length))
                    (cl:error 'wire-format:alignment)))))
            (cl:t (cl:error 'wire-format:alignment))))
        (cl:t
          (cl:when (cl:= wire-type wire-format:+end-group+)
            (cl:return-from pb:merge-from-array index))
          (cl:setf index (wire-format:skip-field field-number wire-type buffer index limit)))))))

(cl:defmethod pb:merge-from-message ((self byte-interval-symbolic-expressions-entry) (from byte-interval-symbolic-expressions-entry))
  (cl:when (cl:logbitp 0 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'key) (cl:slot-value from 'key))
    (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 1 (cl:slot-value from '%has-bits%))
    (cl:let ((message (cl:slot-value self 'value)))
      (cl:when (cl:null message)
        (cl:setf message (cl:make-instance 'gtirb.proto::symbolic-expression))
        (cl:setf (cl:slot-value self 'value) message)
        (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))
     (pb:merge-from-message message (cl:slot-value from 'value))))
  )



(cl:defmethod cl:print-object ((self byte-interval) stream)
  (cl:pprint-logical-block (stream cl:nil)
    (cl:print-unreadable-object (self stream :type cl:t :identity cl:t)
      (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_uuid: ~s" (uuid self)))
      (cl:format stream " ~_blocks: ~s" (blocks self))
      (cl:format stream " ~_symbolic-expressions: ~s" (symbolic-expressions self))
      (cl:when (cl:logbitp 3 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_has-address: ~s" (has-address self)))
      (cl:when (cl:logbitp 4 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_address: ~s" (address self)))
      (cl:when (cl:logbitp 5 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_size: ~s" (size self)))
      (cl:when (cl:logbitp 6 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_contents: ~s" (contents self)))
      ))
  (cl:values))

(cl:defmethod pb:clear ((self byte-interval))
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'uuid) (cl:make-array 0 :element-type '(cl:unsigned-byte 8))))
  (cl:setf (cl:slot-value self 'has-address) cl:nil)
  (cl:setf (cl:slot-value self 'address) 0)
  (cl:setf (cl:slot-value self 'size) 0)
  (cl:when (cl:logbitp 6 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'contents) (cl:make-array 0 :element-type '(cl:unsigned-byte 8))))
  (cl:setf (cl:slot-value self 'blocks)
           (cl:make-array 0 :element-type 'gtirb.proto::block
            :fill-pointer 0 :adjustable cl:t))
  (cl:setf (cl:slot-value self 'symbolic-expressions)
           (cl:make-array 0 :element-type 'gtirb.proto::byte-interval-symbolic-expressions-entry
            :fill-pointer 0 :adjustable cl:t))
  (cl:setf (cl:slot-value self '%has-bits%) 0)
  (cl:values))

(cl:defmethod pb:is-initialized ((self byte-interval))
  cl:t)

(cl:defmethod pb:octet-size ((self byte-interval))
  (cl:let ((size 0))
    ;; bytes uuid = 1[json_name = "uuid"];
    (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
      (cl:incf size 1)
      (cl:incf size (cl:let ((s (cl:length (cl:slot-value self 'uuid))))
        (cl:+ s (varint:length32 s)))))
    ;; bool has_address = 4[json_name = "hasAddress"];
    (cl:when (cl:logbitp 3 (cl:slot-value self '%has-bits%))
      (cl:incf size
        (cl:+ 1 1)))
    ;; uint64 address = 5[json_name = "address"];
    (cl:when (cl:logbitp 4 (cl:slot-value self '%has-bits%))
      (cl:incf size
        (cl:+ 1 (varint:length64 (cl:slot-value self 'address)))))
    ;; uint64 size = 6[json_name = "size"];
    (cl:when (cl:logbitp 5 (cl:slot-value self '%has-bits%))
      (cl:incf size
        (cl:+ 1 (varint:length64 (cl:slot-value self 'size)))))
    ;; bytes contents = 7[json_name = "contents"];
    (cl:when (cl:logbitp 6 (cl:slot-value self '%has-bits%))
      (cl:incf size 1)
      (cl:incf size (cl:let ((s (cl:length (cl:slot-value self 'contents))))
        (cl:+ s (varint:length32 s)))))
    ;; repeated .gtirb.proto.Block blocks = 2[json_name = "blocks"];
    (cl:let* ((v (cl:slot-value self 'blocks))
              (length (cl:length v)))
      (cl:incf size (cl:* 1 length))
      (cl:dotimes (i length)
        (cl:let ((s (pb:octet-size (cl:aref v i))))
          (cl:incf size (cl:+ s (varint:length32 s))))))
    ;; map<uint64, .gtirb.proto.SymbolicExpression> symbolic_expressions = 3[json_name = "symbolicExpressions"];
    (cl:let* ((v (cl:slot-value self 'symbolic-expressions))
              (length (cl:length v)))
      (cl:incf size (cl:* 1 length))
      (cl:dotimes (i length)
        (cl:let ((s (pb:octet-size (cl:aref v i))))
          (cl:incf size (cl:+ s (varint:length32 s))))))
    (cl:setf (cl:slot-value self 'pb::%cached-size%) size)
    size))

(cl:defmethod pb:serialize ((self byte-interval) buffer index limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index index limit)
              (cl:ignorable buffer limit))
  ;; bytes uuid = 1[json_name = "uuid"];
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 10))
    (cl:setf index (wire-format:write-octets-carefully buffer index limit (cl:slot-value self 'uuid))))
  ;; repeated .gtirb.proto.Block blocks = 2[json_name = "blocks"];
  (cl:let* ((v (cl:slot-value self 'blocks))
            (length (cl:length v)))
    (cl:loop for i from 0 below length do
       (cl:setf index (varint:encode-uint32-carefully buffer index limit 18))
       (cl:setf index (varint:encode-uint32-carefully buffer index limit (cl:slot-value (cl:aref v i) 'pb::%cached-size%)))
       (cl:setf index (pb:serialize (cl:aref v i) buffer index limit))))
  ;; map<uint64, .gtirb.proto.SymbolicExpression> symbolic_expressions = 3[json_name = "symbolicExpressions"];
  (cl:let* ((v (cl:slot-value self 'symbolic-expressions))
            (length (cl:length v)))
    (cl:loop for i from 0 below length do
       (cl:setf index (varint:encode-uint32-carefully buffer index limit 26))
       (cl:setf index (varint:encode-uint32-carefully buffer index limit (cl:slot-value (cl:aref v i) 'pb::%cached-size%)))
       (cl:setf index (pb:serialize (cl:aref v i) buffer index limit))))
  ;; bool has_address = 4[json_name = "hasAddress"];
  (cl:when (cl:logbitp 3 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 32))
    (cl:setf index
             (wire-format:write-boolean-carefully buffer index limit (cl:slot-value self 'has-address))))
  ;; uint64 address = 5[json_name = "address"];
  (cl:when (cl:logbitp 4 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 40))
    (cl:setf index
             (varint:encode-uint64-carefully buffer index limit (cl:slot-value self 'address))))
  ;; uint64 size = 6[json_name = "size"];
  (cl:when (cl:logbitp 5 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 48))
    (cl:setf index
             (varint:encode-uint64-carefully buffer index limit (cl:slot-value self 'size))))
  ;; bytes contents = 7[json_name = "contents"];
  (cl:when (cl:logbitp 6 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 58))
    (cl:setf index (wire-format:write-octets-carefully buffer index limit (cl:slot-value self 'contents))))
  index)

(cl:defmethod pb:merge-from-array ((self byte-interval) buffer start limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index start limit))
  (cl:do ((index start index))
      ((cl:>= index limit) index)
    (cl:declare (cl:type com.google.base:vector-index index))
    (cl:multiple-value-bind (field-number wire-type new-index)
        (wire-format:parse-tag buffer index limit)
      (cl:setf index new-index)
      (cl:case field-number
        ;; bytes uuid = 1[json_name = "uuid"];
        ((1)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (value new-index)
                  (wire-format:read-octets-carefully buffer index limit)
                (cl:setf (cl:slot-value self 'uuid) value)
                (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1)
                (cl:setf index new-index)))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; repeated .gtirb.proto.Block blocks = 2[json_name = "blocks"];
        ((2)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint31-carefully buffer index limit)
                (cl:when (cl:> (cl:+ new-index length) limit)
                  (cl:error 'wire-format:data-exhausted))
                (cl:let ((message (cl:make-instance 'gtirb.proto::block)))
                  (cl:setf index (pb:merge-from-array message buffer new-index (cl:+ new-index length)))
                  (cl:when (cl:/= index (cl:+ new-index length))
                    (cl:error 'wire-format:alignment))
                  (cl:vector-push-extend message (cl:slot-value self 'blocks)))))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; map<uint64, .gtirb.proto.SymbolicExpression> symbolic_expressions = 3[json_name = "symbolicExpressions"];
        ((3)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint31-carefully buffer index limit)
                (cl:when (cl:> (cl:+ new-index length) limit)
                  (cl:error 'wire-format:data-exhausted))
                (cl:let ((message (cl:make-instance 'gtirb.proto::byte-interval-symbolic-expressions-entry)))
                  (cl:setf index (pb:merge-from-array message buffer new-index (cl:+ new-index length)))
                  (cl:when (cl:/= index (cl:+ new-index length))
                    (cl:error 'wire-format:alignment))
                  (cl:vector-push-extend message (cl:slot-value self 'symbolic-expressions)))))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; bool has_address = 4[json_name = "hasAddress"];
        ((4)
          (cl:cond
            ((cl:= wire-type wire-format:+varint+)
              (cl:multiple-value-bind (value new-index)
                  (wire-format:read-boolean-carefully buffer index limit)
                (cl:setf (cl:slot-value self 'has-address) value)
                (cl:setf (cl:ldb (cl:byte 1 3) (cl:slot-value self '%has-bits%)) 1)
                (cl:setf index new-index)))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; uint64 address = 5[json_name = "address"];
        ((5)
          (cl:cond
            ((cl:= wire-type wire-format:+varint+)
              (cl:multiple-value-bind (value new-index)
                  (varint:parse-uint64-carefully buffer index limit)
                (cl:setf (cl:slot-value self 'address) value)
                (cl:setf (cl:ldb (cl:byte 1 4) (cl:slot-value self '%has-bits%)) 1)
                (cl:setf index new-index)))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; uint64 size = 6[json_name = "size"];
        ((6)
          (cl:cond
            ((cl:= wire-type wire-format:+varint+)
              (cl:multiple-value-bind (value new-index)
                  (varint:parse-uint64-carefully buffer index limit)
                (cl:setf (cl:slot-value self 'size) value)
                (cl:setf (cl:ldb (cl:byte 1 5) (cl:slot-value self '%has-bits%)) 1)
                (cl:setf index new-index)))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; bytes contents = 7[json_name = "contents"];
        ((7)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (value new-index)
                  (wire-format:read-octets-carefully buffer index limit)
                (cl:setf (cl:slot-value self 'contents) value)
                (cl:setf (cl:ldb (cl:byte 1 6) (cl:slot-value self '%has-bits%)) 1)
                (cl:setf index new-index)))
            (cl:t (cl:error 'wire-format:alignment))))
        (cl:t
          (cl:when (cl:= wire-type wire-format:+end-group+)
            (cl:return-from pb:merge-from-array index))
          (cl:setf index (wire-format:skip-field field-number wire-type buffer index limit)))))))

(cl:defmethod pb:merge-from-message ((self byte-interval) (from byte-interval))
  (cl:let* ((v (cl:slot-value self 'blocks))
            (vf (cl:slot-value from 'blocks))
            (length (cl:length vf)))
    (cl:loop for i from 0 below length do
      (cl:vector-push-extend (cl:aref vf i) v)))
  (cl:let* ((v (cl:slot-value self 'symbolic-expressions))
            (vf (cl:slot-value from 'symbolic-expressions))
            (length (cl:length vf)))
    (cl:loop for i from 0 below length do
      (cl:vector-push-extend (cl:aref vf i) v)))
  (cl:when (cl:logbitp 0 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'uuid) (cl:slot-value from 'uuid))
    (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 3 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'has-address) (cl:slot-value from 'has-address))
    (cl:setf (cl:ldb (cl:byte 1 3) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 4 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'address) (cl:slot-value from 'address))
    (cl:setf (cl:ldb (cl:byte 1 4) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 5 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'size) (cl:slot-value from 'size))
    (cl:setf (cl:ldb (cl:byte 1 5) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 6 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'contents) (cl:slot-value from 'contents))
    (cl:setf (cl:ldb (cl:byte 1 6) (cl:slot-value self '%has-bits%)) 1))
  )


