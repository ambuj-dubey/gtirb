
;;;;    Section.lisp

;;; Generated by the protocol buffer compiler.  DO NOT EDIT!


(cl:in-package #:common-lisp-user)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package '#:gtirb.proto)
    (make-package '#:gtirb.proto :use nil)))
(in-package #:gtirb.proto)
(cl:declaim #.com.google.base:*optimize-default*)

(cl:deftype section-flag () '(cl:member 0 1 2 3 4 5 6))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'section-flag))

(cl:defconstant +section-flag-section-undefined+ 0)
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export '+section-flag-section-undefined+))
(cl:defconstant +section-flag-readable+ 1)
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export '+section-flag-readable+))
(cl:defconstant +section-flag-writable+ 2)
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export '+section-flag-writable+))
(cl:defconstant +section-flag-executable+ 3)
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export '+section-flag-executable+))
(cl:defconstant +section-flag-loaded+ 4)
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export '+section-flag-loaded+))
(cl:defconstant +section-flag-initialized+ 5)
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export '+section-flag-initialized+))
(cl:defconstant +section-flag-thread-local+ 6)
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export '+section-flag-thread-local+))

(cl:defconstant +minimum-section-flag+ +section-flag-section-undefined+)
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export '+minimum-section-flag+))
(cl:defconstant +maximum-section-flag+ +section-flag-thread-local+)
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export '+maximum-section-flag+))

(cl:defclass section (pb:protocol-buffer)
  (
  (uuid
   :accessor uuid
   :initform (cl:make-array 0 :element-type '(cl:unsigned-byte 8))
   :type (cl:simple-array (cl:unsigned-byte 8) (cl:*)))
  (name
   :accessor name
   :initform (pb:string-field "")
   :type pb::%sf%)
  (byte-intervals
   :accessor byte-intervals
   :initform (cl:make-array
              0
              :element-type 'gtirb.proto::byte-interval
              :fill-pointer 0 :adjustable cl:t)
   :type (cl:vector gtirb.proto::byte-interval))
  (section-flags
   :accessor section-flags
   :initform (cl:make-array
              0
              :element-type 'gtirb.proto::section-flag
              :fill-pointer 0 :adjustable cl:t)
   :type (cl:vector gtirb.proto::section-flag))
  (&section-flags-cached-size
   :accessor &section-flags-cached-size
   :initform 0
   :type com.google.base:vector-index)
  (%has-bits%
   :accessor %has-bits%
   :initform 0
   :type (cl:unsigned-byte 4))
  (pb::%cached-size%
   :initform 0
   :type (cl:integer 0 #.(cl:1- cl:array-dimension-limit)))
  ))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'section))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'uuid))


(cl:defmethod (cl:setf uuid) :after (x (self section))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-uuid)
  (cl:defgeneric has-uuid (proto)))
(cl:defmethod has-uuid ((self section))
  (cl:logbitp 0 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-uuid))

(cl:unless (cl:fboundp 'clear-uuid)
  (cl:defgeneric clear-uuid (proto)))
(cl:defmethod clear-uuid ((self section))
  (cl:setf (cl:slot-value self 'uuid) (cl:make-array 0 :element-type '(cl:unsigned-byte 8)))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-uuid))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'name))


(cl:defmethod (cl:setf name) :after (x (self section))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-name)
  (cl:defgeneric has-name (proto)))
(cl:defmethod has-name ((self section))
  (cl:logbitp 1 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-name))

(cl:unless (cl:fboundp 'clear-name)
  (cl:defgeneric clear-name (proto)))
(cl:defmethod clear-name ((self section))
  (cl:setf (cl:slot-value self 'name) (pb:string-field ""))
  (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-name))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'byte-intervals))

(cl:unless (cl:fboundp 'clear-byte-intervals)
  (cl:defgeneric clear-byte-intervals (proto)))
(cl:defmethod clear-byte-intervals ((self section))
  (cl:setf (cl:slot-value self 'byte-intervals)
           (cl:make-array 0 :element-type 'gtirb.proto::byte-interval
            :fill-pointer 0 :adjustable cl:t))
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-byte-intervals))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'section-flags))

(cl:unless (cl:fboundp 'clear-section-flags)
  (cl:defgeneric clear-section-flags (proto)))
(cl:defmethod clear-section-flags ((self section))
  (cl:setf (cl:slot-value self 'section-flags)
           (cl:make-array
            0
            :element-type 'gtirb.proto::section-flag
            :fill-pointer 0 :adjustable cl:t))
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-section-flags))


(cl:defmethod cl:print-object ((self section) stream)
  (cl:pprint-logical-block (stream cl:nil)
    (cl:print-unreadable-object (self stream :type cl:t :identity cl:t)
      (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_uuid: ~s" (uuid self)))
      (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_name: ~s" (name self)))
      (cl:format stream " ~_byte-intervals: ~s" (byte-intervals self))
      (cl:format stream " ~_section-flags: ~s" (section-flags self))
      ))
  (cl:values))

(cl:defmethod pb:clear ((self section))
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'uuid) (cl:make-array 0 :element-type '(cl:unsigned-byte 8))))
  (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'name) (pb:string-field "")))
  (cl:setf (cl:slot-value self 'byte-intervals)
           (cl:make-array 0 :element-type 'gtirb.proto::byte-interval
            :fill-pointer 0 :adjustable cl:t))
  (cl:setf (cl:slot-value self 'section-flags)
           (cl:make-array
            0
            :element-type 'gtirb.proto::section-flag
            :fill-pointer 0 :adjustable cl:t))
  (cl:setf (cl:slot-value self '%has-bits%) 0)
  (cl:values))

(cl:defmethod pb:is-initialized ((self section))
  cl:t)

(cl:defmethod pb:octet-size ((self section))
  (cl:let ((size 0))
    ;; bytes uuid = 1[json_name = "uuid"];
    (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
      (cl:incf size 1)
      (cl:incf size (cl:let ((s (cl:length (cl:slot-value self 'uuid))))
        (cl:+ s (varint:length32 s)))))
    ;; string name = 2[json_name = "name"];
    (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
      (cl:incf size 1)
      (cl:incf size (cl:let ((s (pb::%utf8-string-length% (cl:slot-value self 'name))))
        (cl:+ s (varint:length32 s)))))
    ;; repeated .gtirb.proto.ByteInterval byte_intervals = 5[json_name = "byteIntervals"];
    (cl:let* ((v (cl:slot-value self 'byte-intervals))
              (length (cl:length v)))
      (cl:incf size (cl:* 1 length))
      (cl:dotimes (i length)
        (cl:let ((s (pb:octet-size (cl:aref v i))))
          (cl:incf size (cl:+ s (varint:length32 s))))))
    ;; repeated .gtirb.proto.SectionFlag section_flags = 6[json_name = "sectionFlags"];
    (cl:let* ((x (cl:slot-value self 'section-flags))
              (length (cl:length x))
              (data-size 0))
      (cl:when (cl:plusp length)
        (cl:dotimes (i length)
          (cl:incf data-size (varint:length32 (cl:ldb (cl:byte 32 0) (cl:aref x i)))))
        (cl:incf size (cl:+ 1 (varint:length32 data-size) data-size)))
      (cl:setf (cl:slot-value self '&section-flags-cached-size) data-size))

    (cl:setf (cl:slot-value self 'pb::%cached-size%) size)
    size))

(cl:defmethod pb:serialize ((self section) buffer index limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index index limit)
              (cl:ignorable buffer limit))
  ;; bytes uuid = 1[json_name = "uuid"];
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 10))
    (cl:setf index (wire-format:write-octets-carefully buffer index limit (cl:slot-value self 'uuid))))
  ;; string name = 2[json_name = "name"];
  (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 18))
    (cl:setf index (wire-format:write-octets-carefully buffer index limit (cl:slot-value (cl:slot-value self 'name) 'pb::%octets%))))
  ;; repeated .gtirb.proto.ByteInterval byte_intervals = 5[json_name = "byteIntervals"];
  (cl:let* ((v (cl:slot-value self 'byte-intervals))
            (length (cl:length v)))
    (cl:loop for i from 0 below length do
       (cl:setf index (varint:encode-uint32-carefully buffer index limit 42))
       (cl:setf index (varint:encode-uint32-carefully buffer index limit (cl:slot-value (cl:aref v i) 'pb::%cached-size%)))
       (cl:setf index (pb:serialize (cl:aref v i) buffer index limit))))
  ;; repeated .gtirb.proto.SectionFlag section_flags = 6[json_name = "sectionFlags"];
  (cl:let* ((v (cl:slot-value self 'section-flags))
            (length (cl:length v)))
    (cl:when (cl:plusp length)
      (cl:setf index (varint:encode-uint32-carefully buffer index limit 50))
      (cl:setf index
               (varint:encode-uint32-carefully buffer index limit
                                               (cl:slot-value self '&section-flags-cached-size)))
      (cl:loop for i from 0 below length do
        (cl:setf index
                 (varint:encode-uint64-carefully
                  buffer index limit
                  (cl:ldb (cl:byte 64 0) (cl:aref v i)))))))
  index)

(cl:defmethod pb:merge-from-array ((self section) buffer start limit)
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
        ;; string name = 2[json_name = "name"];
        ((2)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (value new-index)
                  (wire-format:read-octets-carefully buffer index limit)
                (cl:setf (cl:slot-value self 'name) (pb:string-field value))
                (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1)
                (cl:setf index new-index)))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; repeated .gtirb.proto.ByteInterval byte_intervals = 5[json_name = "byteIntervals"];
        ((5)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint31-carefully buffer index limit)
                (cl:when (cl:> (cl:+ new-index length) limit)
                  (cl:error 'wire-format:data-exhausted))
                (cl:let ((message (cl:make-instance 'gtirb.proto::byte-interval)))
                  (cl:setf index (pb:merge-from-array message buffer new-index (cl:+ new-index length)))
                  (cl:when (cl:/= index (cl:+ new-index length))
                    (cl:error 'wire-format:alignment))
                  (cl:vector-push-extend message (cl:slot-value self 'byte-intervals)))))
            (cl:t (cl:error 'wire-format:alignment))))
        ;; repeated .gtirb.proto.SectionFlag section_flags = 6[json_name = "sectionFlags"];
        ((6)
          (cl:cond
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint32-carefully buffer index limit)
                (cl:setf index new-index)
                (cl:let ((end (cl:+ index length)))
                  (cl:loop while (cl:< index end) do
                    (cl:multiple-value-bind (value new-index)
                        (varint:parse-int32-carefully buffer index limit)
                      ;; XXXXX: when valid, set field, else add to unknown fields
                      (cl:vector-push-extend value (cl:slot-value self 'section-flags))
                      (cl:setf index new-index))))))
            ((cl:= wire-type wire-format:+length-delimited+)
              (cl:multiple-value-bind (length new-index)
                  (varint:parse-uint32-carefully buffer index limit)
                (cl:setf index new-index)
                (cl:let ((end (cl:+ index length)))
                  (cl:loop while (cl:< index end) do
                    (cl:multiple-value-bind (value new-index)
                        (varint:parse-int32-carefully buffer index limit)
                      ;; XXXXX: when valid, set field, else add to unknown fields
                      (cl:vector-push-extend value (cl:slot-value self 'section-flags))
                      (cl:setf index new-index))))))
            (cl:t (cl:error 'wire-format:alignment))))
        (cl:t
          (cl:when (cl:= wire-type wire-format:+end-group+)
            (cl:return-from pb:merge-from-array index))
          (cl:setf index
            (wire-format:skip-field field-number wire-type buffer index limit))
          )))))

(cl:defmethod pb:merge-from-message ((self section) (from section))
  (cl:let* ((v (cl:slot-value self 'byte-intervals))
            (vf (cl:slot-value from 'byte-intervals))
            (length (cl:length vf)))
    (cl:loop for i from 0 below length do
      (cl:vector-push-extend (cl:aref vf i) v)))
  (cl:let* ((v (cl:slot-value self 'section-flags))
            (vf (cl:slot-value from 'section-flags))
            (length (cl:length vf)))
    (cl:loop for i from 0 below length do
      (cl:vector-push-extend (cl:aref vf i) v)))
  (cl:when (cl:logbitp 0 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'uuid) (cl:slot-value from 'uuid))
    (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 1 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'name) (cl:slot-value from 'name))
    (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))
)


